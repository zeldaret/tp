lbl_80CE6758:
/* 80CE6758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE675C  7C 08 02 A6 */	mflr r0
/* 80CE6760  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE6764  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE6768  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE676C  41 82 00 1C */	beq lbl_80CE6788
/* 80CE6770  3C A0 80 CE */	lis r5, __vt__8cM3dGCyl@ha /* 0x80CE6B64@ha */
/* 80CE6774  38 05 6B 64 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80CE6B64@l */
/* 80CE6778  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80CE677C  7C 80 07 35 */	extsh. r0, r4
/* 80CE6780  40 81 00 08 */	ble lbl_80CE6788
/* 80CE6784  4B 5E 85 B9 */	bl __dl__FPv
lbl_80CE6788:
/* 80CE6788  7F E3 FB 78 */	mr r3, r31
/* 80CE678C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE6790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE6794  7C 08 03 A6 */	mtlr r0
/* 80CE6798  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE679C  4E 80 00 20 */	blr 
