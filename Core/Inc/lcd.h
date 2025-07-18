
#ifndef INC_LCD_H_
#define INC_LCD_H_

#include "stm32f7xx_hal.h"

//4-wire SPI

void wire4SPI_init(void);
void lcd_reset(void);
void lcd_setcolumn_address(int column_num);
void lcd_setpage_address(int page_num);




#endif /* INC_LCD_H_ */
