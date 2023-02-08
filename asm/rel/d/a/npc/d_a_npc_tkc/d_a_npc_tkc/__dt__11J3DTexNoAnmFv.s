lbl_80B0D06C:
/* 80B0D06C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0D070  7C 08 02 A6 */	mflr r0
/* 80B0D074  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0D078  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B0D07C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B0D080  41 82 00 1C */	beq lbl_80B0D09C
/* 80B0D084  3C A0 80 B1 */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80B10C0C@ha */
/* 80B0D088  38 05 0C 0C */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80B10C0C@l */
/* 80B0D08C  90 1F 00 00 */	stw r0, 0(r31)
/* 80B0D090  7C 80 07 35 */	extsh. r0, r4
/* 80B0D094  40 81 00 08 */	ble lbl_80B0D09C
/* 80B0D098  4B 7C 1C A5 */	bl __dl__FPv
lbl_80B0D09C:
/* 80B0D09C  7F E3 FB 78 */	mr r3, r31
/* 80B0D0A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B0D0A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0D0A8  7C 08 03 A6 */	mtlr r0
/* 80B0D0AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0D0B0  4E 80 00 20 */	blr 
