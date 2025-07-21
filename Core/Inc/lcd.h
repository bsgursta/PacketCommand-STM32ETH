#ifndef INC_LCD_H_
#define INC_LCD_H_

#include "stm32f7xx_hal.h"

//4-wire SPI

void wire4SPI_init(void);
void lcd_reset(void);
HAL_StatusTypeDef lcd_transfer(uint8_t data);

HAL_StatusTypeDef  lcd_ON(void);
HAL_StatusTypeDef  lcd_ALLpixels(void);
HAL_StatusTypeDef  lcd_OFF(void);
HAL_StatusTypeDef  lcd_RAMpixels(void);

HAL_StatusTypeDef  lcd_setcolumn_address(int column_num);
HAL_StatusTypeDef  lcd_setpage_address(int page_num);




#endif /* INC_LCD_H_ */
