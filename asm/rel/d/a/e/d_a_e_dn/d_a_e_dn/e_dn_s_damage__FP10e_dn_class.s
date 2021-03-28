lbl_804E973C:
/* 804E973C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E9740  7C 08 02 A6 */	mflr r0
/* 804E9744  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E9748  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E974C  93 C1 00 08 */	stw r30, 8(r1)
/* 804E9750  7C 7E 1B 78 */	mr r30, r3
/* 804E9754  3C 80 80 4F */	lis r4, lit_3789@ha
/* 804E9758  3B E4 E8 AC */	addi r31, r4, lit_3789@l
/* 804E975C  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 804E9760  2C 00 00 01 */	cmpwi r0, 1
/* 804E9764  41 82 00 3C */	beq lbl_804E97A0
/* 804E9768  40 80 00 5C */	bge lbl_804E97C4
/* 804E976C  2C 00 00 00 */	cmpwi r0, 0
/* 804E9770  40 80 00 08 */	bge lbl_804E9778
/* 804E9774  48 00 00 50 */	b lbl_804E97C4
lbl_804E9778:
/* 804E9778  38 00 00 01 */	li r0, 1
/* 804E977C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E9780  38 00 00 14 */	li r0, 0x14
/* 804E9784  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
/* 804E9788  38 80 00 1F */	li r4, 0x1f
/* 804E978C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804E9790  38 A0 00 02 */	li r5, 2
/* 804E9794  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E9798  4B FF BB 39 */	bl anm_init__FP10e_dn_classifUcf
/* 804E979C  48 00 00 28 */	b lbl_804E97C4
lbl_804E97A0:
/* 804E97A0  A8 1E 06 E0 */	lha r0, 0x6e0(r30)
/* 804E97A4  2C 00 00 00 */	cmpwi r0, 0
/* 804E97A8  40 82 00 1C */	bne lbl_804E97C4
/* 804E97AC  38 00 00 03 */	li r0, 3
/* 804E97B0  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E97B4  38 00 00 00 */	li r0, 0
/* 804E97B8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E97BC  38 00 00 28 */	li r0, 0x28
/* 804E97C0  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
lbl_804E97C4:
/* 804E97C4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 804E97C8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804E97CC  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 804E97D0  4B D8 62 B0 */	b cLib_addCalc0__FPfff
/* 804E97D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E97D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E97DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E97E0  7C 08 03 A6 */	mtlr r0
/* 804E97E4  38 21 00 10 */	addi r1, r1, 0x10
/* 804E97E8  4E 80 00 20 */	blr 
