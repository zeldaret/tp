lbl_8082F160:
/* 8082F160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8082F164  7C 08 02 A6 */	mflr r0
/* 8082F168  90 01 00 14 */	stw r0, 0x14(r1)
/* 8082F16C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8082F170  7C 7F 1B 79 */	or. r31, r3, r3
/* 8082F174  41 82 00 1C */	beq lbl_8082F190
/* 8082F178  3C A0 80 83 */	lis r5, __vt__12daE_ZH_HIO_c@ha
/* 8082F17C  38 05 F6 D4 */	addi r0, r5, __vt__12daE_ZH_HIO_c@l
/* 8082F180  90 1F 00 00 */	stw r0, 0(r31)
/* 8082F184  7C 80 07 35 */	extsh. r0, r4
/* 8082F188  40 81 00 08 */	ble lbl_8082F190
/* 8082F18C  4B A9 FB B0 */	b __dl__FPv
lbl_8082F190:
/* 8082F190  7F E3 FB 78 */	mr r3, r31
/* 8082F194  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8082F198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082F19C  7C 08 03 A6 */	mtlr r0
/* 8082F1A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8082F1A4  4E 80 00 20 */	blr 
