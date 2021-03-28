lbl_80D31B4C:
/* 80D31B4C  3C 80 80 D3 */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80D31B50  38 04 44 04 */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80D31B54  90 03 00 00 */	stw r0, 0(r3)
/* 80D31B58  3C 80 80 D3 */	lis r4, __vt__15daWdStick_HIO_c@ha
/* 80D31B5C  38 04 43 F8 */	addi r0, r4, __vt__15daWdStick_HIO_c@l
/* 80D31B60  90 03 00 00 */	stw r0, 0(r3)
/* 80D31B64  38 00 00 3C */	li r0, 0x3c
/* 80D31B68  98 03 00 04 */	stb r0, 4(r3)
/* 80D31B6C  38 00 00 01 */	li r0, 1
/* 80D31B70  98 03 00 05 */	stb r0, 5(r3)
/* 80D31B74  38 00 00 0F */	li r0, 0xf
/* 80D31B78  B0 03 00 06 */	sth r0, 6(r3)
/* 80D31B7C  38 00 00 00 */	li r0, 0
/* 80D31B80  98 03 00 08 */	stb r0, 8(r3)
/* 80D31B84  4E 80 00 20 */	blr 
