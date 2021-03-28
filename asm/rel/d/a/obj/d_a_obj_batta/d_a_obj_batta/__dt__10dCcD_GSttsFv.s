lbl_80BAC730:
/* 80BAC730  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAC734  7C 08 02 A6 */	mflr r0
/* 80BAC738  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAC73C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BAC740  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BAC744  41 82 00 30 */	beq lbl_80BAC774
/* 80BAC748  3C 60 80 BB */	lis r3, __vt__10dCcD_GStts@ha
/* 80BAC74C  38 03 CC 10 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80BAC750  90 1F 00 00 */	stw r0, 0(r31)
/* 80BAC754  41 82 00 10 */	beq lbl_80BAC764
/* 80BAC758  3C 60 80 BB */	lis r3, __vt__10cCcD_GStts@ha
/* 80BAC75C  38 03 CC 04 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80BAC760  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BAC764:
/* 80BAC764  7C 80 07 35 */	extsh. r0, r4
/* 80BAC768  40 81 00 0C */	ble lbl_80BAC774
/* 80BAC76C  7F E3 FB 78 */	mr r3, r31
/* 80BAC770  4B 72 25 CC */	b __dl__FPv
lbl_80BAC774:
/* 80BAC774  7F E3 FB 78 */	mr r3, r31
/* 80BAC778  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAC77C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAC780  7C 08 03 A6 */	mtlr r0
/* 80BAC784  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAC788  4E 80 00 20 */	blr 
