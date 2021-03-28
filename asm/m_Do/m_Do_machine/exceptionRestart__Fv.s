lbl_8000B798:
/* 8000B798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000B79C  7C 08 02 A6 */	mflr r0
/* 8000B7A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000B7A4  38 60 00 00 */	li r3, 0
/* 8000B7A8  38 80 00 00 */	li r4, 0
/* 8000B7AC  38 A0 00 00 */	li r5, 0
/* 8000B7B0  48 00 9E 65 */	bl mDoRst_reset__FiUli
/* 8000B7B4  38 60 00 00 */	li r3, 0
/* 8000B7B8  38 80 00 00 */	li r4, 0
/* 8000B7BC  38 A0 00 00 */	li r5, 0
/* 8000B7C0  48 33 40 ED */	bl OSResetSystem
lbl_8000B7C4:
/* 8000B7C4  48 00 00 00 */	b lbl_8000B7C4
