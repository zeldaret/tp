lbl_80C2E018:
/* 80C2E018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2E01C  7C 08 02 A6 */	mflr r0
/* 80C2E020  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2E024  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2E028  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C2E02C  41 82 00 1C */	beq lbl_80C2E048
/* 80C2E030  3C A0 80 C3 */	lis r5, __vt__8cM3dGAab@ha /* 0x80C2E2A8@ha */
/* 80C2E034  38 05 E2 A8 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80C2E2A8@l */
/* 80C2E038  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C2E03C  7C 80 07 35 */	extsh. r0, r4
/* 80C2E040  40 81 00 08 */	ble lbl_80C2E048
/* 80C2E044  4B 6A 0C F9 */	bl __dl__FPv
lbl_80C2E048:
/* 80C2E048  7F E3 FB 78 */	mr r3, r31
/* 80C2E04C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2E050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2E054  7C 08 03 A6 */	mtlr r0
/* 80C2E058  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2E05C  4E 80 00 20 */	blr 
