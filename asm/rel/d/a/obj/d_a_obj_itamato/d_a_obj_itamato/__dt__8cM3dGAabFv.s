lbl_80C29B54:
/* 80C29B54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C29B58  7C 08 02 A6 */	mflr r0
/* 80C29B5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C29B60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C29B64  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C29B68  41 82 00 1C */	beq lbl_80C29B84
/* 80C29B6C  3C A0 80 C3 */	lis r5, __vt__8cM3dGAab@ha /* 0x80C2AD10@ha */
/* 80C29B70  38 05 AD 10 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80C2AD10@l */
/* 80C29B74  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C29B78  7C 80 07 35 */	extsh. r0, r4
/* 80C29B7C  40 81 00 08 */	ble lbl_80C29B84
/* 80C29B80  4B 6A 51 BD */	bl __dl__FPv
lbl_80C29B84:
/* 80C29B84  7F E3 FB 78 */	mr r3, r31
/* 80C29B88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C29B8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C29B90  7C 08 03 A6 */	mtlr r0
/* 80C29B94  38 21 00 10 */	addi r1, r1, 0x10
/* 80C29B98  4E 80 00 20 */	blr 
