/*
    Copyright (c) 2021 Alethea Katherine Flowers.
    Published under the standard MIT License.
    Full text available at: https://opensource.org/licenses/MIT
*/

#pragma once

/* Global configuration for all of Hubble's hardware and behavior. */

#include "hubble_adc.h"
#include "hubble_dac.h"
#include "hubble_mux50x.h"
#include "sam.h"
#include "wntr_bitbang_spi.h"
#include "wntr_gpio.h"
#include "wntr_sercom_spi.h"
#include <stdint.h>

/*
    Clock configuration
*/
#define WNTR_SYSTEM_CLOCKS_USE_32K_CRYSTAL 1

/*
    ADC/DAC configuration
*/

#define HUBBLE_ADC0_ENABLED 1
#define HUBBLE_ADC1_ENABLED 1

/* 48 MHz clock divided down to 12 MHz, or around 750 KSPS. */
#define HUBBLE_ADC_GCLK GCLK_PCHCTRL_GEN_GCLK1
#define HUBBLE_ADC_PRESCALER ADC_CTRLA_PRESCALER_DIV4

/*
    The ADC inputs are driven by low impedence op-amps (let's assume 1 kOhms),
    so the sample time doesn't need to be very high. (Datasheet Figure 54-4)

    sample_time >= (2 kOhms + 1 kOhms) * 3 pF * 9.7
    sample_time >= 87.3 ns

    With the clock at 12 MHz (83 ns period), 2 clock cycles should be
    sufficient.
*/
#define HUBBLE_ADC_SAMPLE_TIME 2

/*
    Averaging reduces the througput by 1 / SAMPLENUM, so with 750 KSPS
    we'll end up with 46 KSPS, divided amongst the ADC channels.
    See Datasheet table 45-3.
*/
#define HUBBLE_ADC_AVERAGE_SAMPLENUM ADC_AVGCTRL_SAMPLENUM_16
#define HUBBLE_ADC_AVERAGE_ADJRES 0x4

/*
    Pin assignments
*/
#define GPIO_1 (WNTR_GPIO_PIN(A, 27))
#define GPIO_2 (WNTR_GPIO_PIN(B, 23))
#define GPIO_3 (WNTR_GPIO_PIN(B, 22))
#define GPIO_4 (WNTR_GPIO_PIN(A, 21))
#define GPIO_5 (WNTR_GPIO_PIN(A, 20))
#define GPIO_6 (WNTR_GPIO_PIN(A, 12))
#define GPIO_7 (WNTR_GPIO_PIN(B, 11))
#define GPIO_8 (WNTR_GPIO_PIN(B, 10))
#define GPIO_9 (WNTR_GPIO_PIN(A, 11))
#define GPIO_9_ADC_0_11 ((const struct HubbleADCInput){ADC0, WNTR_PORT_A, 11, ADC_INPUTCTRL_MUXPOS_AIN11})
#define GPIO_10 (WNTR_GPIO_PIN(A, 10))
#define GPIO_10_ADC_0_10 ((const struct HubbleADCInput){ADC0, WNTR_PORT_A, 10, ADC_INPUTCTRL_MUXPOS_AIN10})
#define GPIO_11 (WNTR_GPIO_PIN(A, 9))
#define GPIO_11_ADC_0_9 ((const struct HubbleADCInput){ADC0, WNTR_PORT_A, 9, ADC_INPUTCTRL_MUXPOS_AIN9})
#define GPIO_11_ADC_1_3 ((const struct HubbleADCInput){ADC1, WNTR_PORT_A, 9, ADC_INPUTCTRL_MUXPOS_AIN3})
#define GPIO_12 (WNTR_GPIO_PIN(A, 8))
#define GPIO_12_ADC_0_8 ((const struct HubbleADCInput){ADC0, WNTR_PORT_A, 8, ADC_INPUTCTRL_MUXPOS_AIN8})
#define GPIO_12_ADC_1_2 ((const struct HubbleADCInput){ADC1, WNTR_PORT_A, 8, ADC_INPUTCTRL_MUXPOS_AIN2})
#define GPIO_13 (WNTR_GPIO_PIN(A, 7))
#define GPIO_13_ADC_0_7 ((const struct HubbleADCInput){ADC0, WNTR_PORT_A, 7, ADC_INPUTCTRL_MUXPOS_AIN7})
#define GPIO_14 (WNTR_GPIO_PIN(A, 6))
#define GPIO_14_ADC_0_6 ((const struct HubbleADCInput){ADC0, WNTR_PORT_A, 6, ADC_INPUTCTRL_MUXPOS_AIN6})
#define GPIO_15 (WNTR_GPIO_PIN(A, 5))
#define GPIO_15_ADC_0_5_DAC_1 ((const struct HubbleADCInput){ADC0, WNTR_PORT_A, 5, ADC_INPUTCTRL_MUXPOS_AIN5})
#define GPIO_16 (WNTR_GPIO_PIN(A, 4))
#define GPIO_16_ADC_0_4 ((const struct HubbleADCInput){ADC0, WNTR_PORT_A, 4, ADC_INPUTCTRL_MUXPOS_AIN4})
#define GPIO_17 (WNTR_GPIO_PIN(B, 7))
#define GPIO_17_ADC_1_9 ((const struct HubbleADCInput){ADC1, WNTR_PORT_B, 7, ADC_INPUTCTRL_MUXPOS_AIN9})
#define GPIO_18 (WNTR_GPIO_PIN(B, 6))
#define GPIO_18_ADC_1_8 ((const struct HubbleADCInput){ADC1, WNTR_PORT_B, 8, ADC_INPUTCTRL_MUXPOS_AIN8})
#define GPIO_19 (WNTR_GPIO_PIN(A, 2))
#define GPIO_19_ADC_0_0 ((const struct HubbleADCInput){ADC0, WNTR_PORT_A, 2, ADC_INPUTCTRL_MUXPOS_AIN0})
#define GPIO_20 (WNTR_GPIO_PIN(B, 1))
#define GPIO_20_ADC_0_13 ((const struct HubbleADCInput){ADC0, WNTR_PORT_B, 1, ADC_INPUTCTRL_MUXPOS_AIN13})
#define GPIO_21 (WNTR_GPIO_PIN(B, 0))
#define GPIO_21_ADC_0_12 ((const struct HubbleADCInput){ADC0, WNTR_PORT_B, 0, ADC_INPUTCTRL_MUXPOS_AIN12})
#define GPIO_22 (WNTR_GPIO_PIN(B, 31))
#define GPIO_23 (WNTR_GPIO_PIN(B, 30))
#define GPIO_23_LED (WNTR_GPIO_PIN(B, 30))

/*
    Array of all GPIO pin defs above (not including analog aliases)
*/
static const struct WntrGPIOPin GPIO[] = {
    GPIO_1,  GPIO_2,  GPIO_3,  GPIO_4,  GPIO_5,  GPIO_6,  GPIO_7,  GPIO_8,  GPIO_9,  GPIO_10, GPIO_11, GPIO_12,
    GPIO_13, GPIO_14, GPIO_15, GPIO_16, GPIO_17, GPIO_18, GPIO_19, GPIO_20, GPIO_21, GPIO_22, GPIO_23,
};

/*
    Multiplexers
*/

#define GPIO_DAC_MUX_A0 (WNTR_GPIO_PIN(B, 16))
#define GPIO_DAC_MUX_A1 (WNTR_GPIO_PIN(B, 17))
#define GPIO_ADC_MUX_A0 (WNTR_GPIO_PIN(B, 2))
#define GPIO_ADC_MUX_A1 (WNTR_GPIO_PIN(B, 3))

static const struct HubbleMUX50x DAC_MUX = {.a0 = GPIO_DAC_MUX_A0, .a1 = GPIO_DAC_MUX_A1};

static const struct HubbleMUX50x ADC_MUX = {.a0 = GPIO_ADC_MUX_A0, .a1 = GPIO_ADC_MUX_A1};

/*
    Exclusive ADC pins (w/ buffers)
*/
#define GPIO_AREF0 (WNTR_GPIO_PIN(A, 3))
#define GPIO_A1 (WNTR_GPIO_PIN(B, 5))
#define ADC_A1 ((const struct HubbleADCInput){ADC1, WNTR_PORT_B, 5, ADC_INPUTCTRL_MUXPOS_AIN6})
#define GPIO_A2 (WNTR_GPIO_PIN(B, 9))
#define ADC_A2 ((const struct HubbleADCInput){ADC1, WNTR_PORT_B, 9, ADC_INPUTCTRL_MUXPOS_AIN1})
#define GPIO_A3 (WNTR_GPIO_PIN(B, 8))
#define ADC_A3 ((const struct HubbleADCInput){ADC1, WNTR_PORT_B, 8, ADC_INPUTCTRL_MUXPOS_AIN0})
#define GPIO_A4 (WNTR_GPIO_PIN(B, 4))
#define ADC_A4 ((const struct HubbleADCInput){ADC1, WNTR_PORT_B, 4, ADC_INPUTCTRL_MUXPOS_AIN7})

static const struct HubbleADCInput ADC_CHANNELS[] = {
    ADC_A1,
    ADC_A2,
    ADC_A3,
    ADC_A4,
};

/*
    SPI configuration for the external DAC (AD5685)
*/

static const struct WntrSERCOMSPI SPI = {
    .sercom = &SERCOM2->SPI,
    .dopo = SERCOM_SPI_DOPO_SDO_3_SCK_1_CS_2,
    .sdo = WNTR_GPIO_PIN_ALT(A, 15, C_SERCOM),
    .sck = WNTR_GPIO_PIN_ALT(A, 13, C_SERCOM),
    // NONE = Don't use hardware CS, since the AD5685 expects 24 bits instead of just 8.
    .cs = WNTR_GPIO_PIN_ALT(A, 14, NONE),
    .polarity = 0,
    .phase = 1,
};
