lbl_80CE8748:
/* 80CE8748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE874C  7C 08 02 A6 */	mflr r0
/* 80CE8750  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE8754  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE8758  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE875C  41 82 00 1C */	beq lbl_80CE8778
/* 80CE8760  3C A0 80 CF */	lis r5, __vt__8cM3dGAab@ha
/* 80CE8764  38 05 8F 74 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80CE8768  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CE876C  7C 80 07 35 */	extsh. r0, r4
/* 80CE8770  40 81 00 08 */	ble lbl_80CE8778
/* 80CE8774  4B 5E 65 C8 */	b __dl__FPv
lbl_80CE8778:
/* 80CE8778  7F E3 FB 78 */	mr r3, r31
/* 80CE877C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE8780  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE8784  7C 08 03 A6 */	mtlr r0
/* 80CE8788  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE878C  4E 80 00 20 */	blr 
