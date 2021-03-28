lbl_80D23C40:
/* 80D23C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D23C44  7C 08 02 A6 */	mflr r0
/* 80D23C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D23C4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D23C50  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D23C54  41 82 00 1C */	beq lbl_80D23C70
/* 80D23C58  3C A0 80 D2 */	lis r5, __vt__17dEvLib_callback_c@ha
/* 80D23C5C  38 05 40 E4 */	addi r0, r5, __vt__17dEvLib_callback_c@l
/* 80D23C60  90 1F 00 00 */	stw r0, 0(r31)
/* 80D23C64  7C 80 07 35 */	extsh. r0, r4
/* 80D23C68  40 81 00 08 */	ble lbl_80D23C70
/* 80D23C6C  4B 5A B0 D0 */	b __dl__FPv
lbl_80D23C70:
/* 80D23C70  7F E3 FB 78 */	mr r3, r31
/* 80D23C74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D23C78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D23C7C  7C 08 03 A6 */	mtlr r0
/* 80D23C80  38 21 00 10 */	addi r1, r1, 0x10
/* 80D23C84  4E 80 00 20 */	blr 
