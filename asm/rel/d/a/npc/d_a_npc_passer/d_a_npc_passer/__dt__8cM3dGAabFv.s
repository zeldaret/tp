lbl_80AA67FC:
/* 80AA67FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA6800  7C 08 02 A6 */	mflr r0
/* 80AA6804  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA6808  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA680C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA6810  41 82 00 1C */	beq lbl_80AA682C
/* 80AA6814  3C A0 80 AA */	lis r5, __vt__8cM3dGAab@ha /* 0x80AA7414@ha */
/* 80AA6818  38 05 74 14 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80AA7414@l */
/* 80AA681C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80AA6820  7C 80 07 35 */	extsh. r0, r4
/* 80AA6824  40 81 00 08 */	ble lbl_80AA682C
/* 80AA6828  4B 82 85 15 */	bl __dl__FPv
lbl_80AA682C:
/* 80AA682C  7F E3 FB 78 */	mr r3, r31
/* 80AA6830  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA6834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA6838  7C 08 03 A6 */	mtlr r0
/* 80AA683C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA6840  4E 80 00 20 */	blr 
