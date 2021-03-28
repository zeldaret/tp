lbl_80D2F728:
/* 80D2F728  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2F72C  7C 08 02 A6 */	mflr r0
/* 80D2F730  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2F734  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2F738  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D2F73C  41 82 00 1C */	beq lbl_80D2F758
/* 80D2F740  3C A0 80 D3 */	lis r5, __vt__8cM3dGAab@ha
/* 80D2F744  38 05 FE 40 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80D2F748  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D2F74C  7C 80 07 35 */	extsh. r0, r4
/* 80D2F750  40 81 00 08 */	ble lbl_80D2F758
/* 80D2F754  4B 59 F5 E8 */	b __dl__FPv
lbl_80D2F758:
/* 80D2F758  7F E3 FB 78 */	mr r3, r31
/* 80D2F75C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2F760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2F764  7C 08 03 A6 */	mtlr r0
/* 80D2F768  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2F76C  4E 80 00 20 */	blr 
