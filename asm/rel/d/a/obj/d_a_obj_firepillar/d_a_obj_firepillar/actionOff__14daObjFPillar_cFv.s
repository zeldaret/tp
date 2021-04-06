lbl_80BE96E0:
/* 80BE96E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE96E4  7C 08 02 A6 */	mflr r0
/* 80BE96E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE96EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE96F0  7C 7F 1B 78 */	mr r31, r3
/* 80BE96F4  38 7F 09 40 */	addi r3, r31, 0x940
/* 80BE96F8  3C 80 80 BF */	lis r4, lit_3780@ha /* 0x80BE9AA0@ha */
/* 80BE96FC  C0 24 9A A0 */	lfs f1, lit_3780@l(r4)  /* 0x80BE9AA0@l */
/* 80BE9700  3C 80 80 BF */	lis r4, lit_3784@ha /* 0x80BE9AB0@ha */
/* 80BE9704  C0 44 9A B0 */	lfs f2, lit_3784@l(r4)  /* 0x80BE9AB0@l */
/* 80BE9708  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80BE970C  EC 42 00 32 */	fmuls f2, f2, f0
/* 80BE9710  4B 68 70 31 */	bl cLib_chaseF__FPfff
/* 80BE9714  A0 7F 09 72 */	lhz r3, 0x972(r31)
/* 80BE9718  28 03 00 00 */	cmplwi r3, 0
/* 80BE971C  40 82 00 10 */	bne lbl_80BE972C
/* 80BE9720  7F E3 FB 78 */	mr r3, r31
/* 80BE9724  48 00 00 61 */	bl actionOnWaitInit__14daObjFPillar_cFv
/* 80BE9728  48 00 00 48 */	b lbl_80BE9770
lbl_80BE972C:
/* 80BE972C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BE9730  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BE9734  28 04 00 FF */	cmplwi r4, 0xff
/* 80BE9738  41 82 00 30 */	beq lbl_80BE9768
/* 80BE973C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE9740  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE9744  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BE9748  7C 05 07 74 */	extsb r5, r0
/* 80BE974C  4B 44 BC 15 */	bl isSwitch__10dSv_info_cCFii
/* 80BE9750  2C 03 00 00 */	cmpwi r3, 0
/* 80BE9754  41 82 00 1C */	beq lbl_80BE9770
/* 80BE9758  A0 7F 09 72 */	lhz r3, 0x972(r31)
/* 80BE975C  38 03 FF FF */	addi r0, r3, -1
/* 80BE9760  B0 1F 09 72 */	sth r0, 0x972(r31)
/* 80BE9764  48 00 00 0C */	b lbl_80BE9770
lbl_80BE9768:
/* 80BE9768  38 03 FF FF */	addi r0, r3, -1
/* 80BE976C  B0 1F 09 72 */	sth r0, 0x972(r31)
lbl_80BE9770:
/* 80BE9770  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE9774  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE9778  7C 08 03 A6 */	mtlr r0
/* 80BE977C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE9780  4E 80 00 20 */	blr 
