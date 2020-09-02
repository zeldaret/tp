.include "macros.inc"

.section .text, "ax" # 80271c8c


.global sBs_FillArea_s
sBs_FillArea_s:
/* 80271C8C 0026EBCC  54 80 F8 7E */	srwi r0, r4, 1
/* 80271C90 0026EBD0  7C 09 03 A6 */	mtctr r0
/* 80271C94 0026EBD4  28 00 00 00 */	cmplwi r0, 0
/* 80271C98 0026EBD8  4C 81 00 20 */	blelr 
lbl_80271C9C:
/* 80271C9C 0026EBDC  B0 A3 00 00 */	sth r5, 0(r3)
/* 80271CA0 0026EBE0  38 63 00 02 */	addi r3, r3, 2
/* 80271CA4 0026EBE4  42 00 FF F8 */	bdnz lbl_80271C9C
/* 80271CA8 0026EBE8  4E 80 00 20 */	blr 

.global sBs_ClearArea
sBs_ClearArea:
/* 80271CAC 0026EBEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80271CB0 0026EBF0  7C 08 02 A6 */	mflr r0
/* 80271CB4 0026EBF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80271CB8 0026EBF8  38 A0 00 00 */	li r5, 0
/* 80271CBC 0026EBFC  4B FF FF D1 */	bl sBs_FillArea_s
/* 80271CC0 0026EC00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80271CC4 0026EC04  7C 08 03 A6 */	mtlr r0
/* 80271CC8 0026EC08  38 21 00 10 */	addi r1, r1, 0x10
/* 80271CCC 0026EC0C  4E 80 00 20 */	blr 

