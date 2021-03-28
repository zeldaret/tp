lbl_80CE5A60:
/* 80CE5A60  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80CE5A64  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80CE5A68  2C 00 00 03 */	cmpwi r0, 3
/* 80CE5A6C  41 82 00 60 */	beq lbl_80CE5ACC
/* 80CE5A70  40 80 00 1C */	bge lbl_80CE5A8C
/* 80CE5A74  2C 00 00 01 */	cmpwi r0, 1
/* 80CE5A78  41 82 00 34 */	beq lbl_80CE5AAC
/* 80CE5A7C  40 80 00 40 */	bge lbl_80CE5ABC
/* 80CE5A80  2C 00 00 00 */	cmpwi r0, 0
/* 80CE5A84  40 80 00 18 */	bge lbl_80CE5A9C
/* 80CE5A88  48 00 00 74 */	b lbl_80CE5AFC
lbl_80CE5A8C:
/* 80CE5A8C  2C 00 00 05 */	cmpwi r0, 5
/* 80CE5A90  41 82 00 5C */	beq lbl_80CE5AEC
/* 80CE5A94  40 80 00 68 */	bge lbl_80CE5AFC
/* 80CE5A98  48 00 00 44 */	b lbl_80CE5ADC
lbl_80CE5A9C:
/* 80CE5A9C  38 00 00 69 */	li r0, 0x69
/* 80CE5AA0  98 03 0B 0C */	stb r0, 0xb0c(r3)
/* 80CE5AA4  38 60 00 00 */	li r3, 0
/* 80CE5AA8  4E 80 00 20 */	blr 
lbl_80CE5AAC:
/* 80CE5AAC  38 00 00 62 */	li r0, 0x62
/* 80CE5AB0  98 03 0B 0C */	stb r0, 0xb0c(r3)
/* 80CE5AB4  38 60 00 01 */	li r3, 1
/* 80CE5AB8  4E 80 00 20 */	blr 
lbl_80CE5ABC:
/* 80CE5ABC  38 00 00 63 */	li r0, 0x63
/* 80CE5AC0  98 03 0B 0C */	stb r0, 0xb0c(r3)
/* 80CE5AC4  38 60 00 02 */	li r3, 2
/* 80CE5AC8  4E 80 00 20 */	blr 
lbl_80CE5ACC:
/* 80CE5ACC  38 00 00 65 */	li r0, 0x65
/* 80CE5AD0  98 03 0B 0C */	stb r0, 0xb0c(r3)
/* 80CE5AD4  38 60 00 03 */	li r3, 3
/* 80CE5AD8  4E 80 00 20 */	blr 
lbl_80CE5ADC:
/* 80CE5ADC  38 00 00 68 */	li r0, 0x68
/* 80CE5AE0  98 03 0B 0C */	stb r0, 0xb0c(r3)
/* 80CE5AE4  38 60 00 04 */	li r3, 4
/* 80CE5AE8  4E 80 00 20 */	blr 
lbl_80CE5AEC:
/* 80CE5AEC  38 00 00 67 */	li r0, 0x67
/* 80CE5AF0  98 03 0B 0C */	stb r0, 0xb0c(r3)
/* 80CE5AF4  38 60 00 05 */	li r3, 5
/* 80CE5AF8  4E 80 00 20 */	blr 
lbl_80CE5AFC:
/* 80CE5AFC  38 00 00 60 */	li r0, 0x60
/* 80CE5B00  98 03 0B 0C */	stb r0, 0xb0c(r3)
/* 80CE5B04  38 60 00 06 */	li r3, 6
/* 80CE5B08  4E 80 00 20 */	blr 
