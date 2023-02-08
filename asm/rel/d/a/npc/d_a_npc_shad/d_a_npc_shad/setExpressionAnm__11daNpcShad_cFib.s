lbl_80AD94B8:
/* 80AD94B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AD94BC  7C 08 02 A6 */	mflr r0
/* 80AD94C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD94C4  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD94C8  4B 88 8D 0D */	bl _savegpr_27
/* 80AD94CC  7C 7F 1B 78 */	mr r31, r3
/* 80AD94D0  7C 9B 23 78 */	mr r27, r4
/* 80AD94D4  7C BE 2B 78 */	mr r30, r5
/* 80AD94D8  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 80AD94DC  54 00 06 A4 */	rlwinm r0, r0, 0, 0x1a, 0x12
/* 80AD94E0  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80AD94E4  1F 9B 00 0C */	mulli r28, r27, 0xc
/* 80AD94E8  3C 80 80 AE */	lis r4, l_bckGetParamList@ha /* 0x80AE2640@ha */
/* 80AD94EC  38 84 26 40 */	addi r4, r4, l_bckGetParamList@l /* 0x80AE2640@l */
/* 80AD94F0  7C A4 E0 2E */	lwzx r5, r4, r28
/* 80AD94F4  2C 05 00 00 */	cmpwi r5, 0
/* 80AD94F8  41 80 00 24 */	blt lbl_80AD951C
/* 80AD94FC  7C 84 E2 14 */	add r4, r4, r28
/* 80AD9500  80 04 00 08 */	lwz r0, 8(r4)
/* 80AD9504  54 00 10 3A */	slwi r0, r0, 2
/* 80AD9508  3C 80 80 AE */	lis r4, l_arcNames@ha /* 0x80AE28E0@ha */
/* 80AD950C  38 84 28 E0 */	addi r4, r4, l_arcNames@l /* 0x80AE28E0@l */
/* 80AD9510  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AD9514  4B 67 96 19 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80AD9518  48 00 00 08 */	b lbl_80AD9520
lbl_80AD951C:
/* 80AD951C  38 60 00 00 */	li r3, 0
lbl_80AD9520:
/* 80AD9520  7C 7D 1B 78 */	mr r29, r3
/* 80AD9524  3C 60 80 AE */	lis r3, l_bckGetParamList@ha /* 0x80AE2640@ha */
/* 80AD9528  38 03 26 40 */	addi r0, r3, l_bckGetParamList@l /* 0x80AE2640@l */
/* 80AD952C  7C 60 E2 14 */	add r3, r0, r28
/* 80AD9530  83 83 00 04 */	lwz r28, 4(r3)
/* 80AD9534  38 60 00 00 */	li r3, 0
/* 80AD9538  28 1B 00 0C */	cmplwi r27, 0xc
/* 80AD953C  41 81 01 88 */	bgt lbl_80AD96C4
/* 80AD9540  3C 80 80 AE */	lis r4, lit_4739@ha /* 0x80AE2AA8@ha */
/* 80AD9544  38 84 2A A8 */	addi r4, r4, lit_4739@l /* 0x80AE2AA8@l */
/* 80AD9548  57 60 10 3A */	slwi r0, r27, 2
/* 80AD954C  7C 04 00 2E */	lwzx r0, r4, r0
/* 80AD9550  7C 09 03 A6 */	mtctr r0
/* 80AD9554  4E 80 04 20 */	bctr 
lbl_80AD9558:
/* 80AD9558  7F E3 FB 78 */	mr r3, r31
/* 80AD955C  38 80 00 00 */	li r4, 0
/* 80AD9560  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AD9564  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AD9568  7D 89 03 A6 */	mtctr r12
/* 80AD956C  4E 80 04 21 */	bctrl 
/* 80AD9570  48 00 01 58 */	b lbl_80AD96C8
lbl_80AD9574:
/* 80AD9574  7F E3 FB 78 */	mr r3, r31
/* 80AD9578  38 80 00 00 */	li r4, 0
/* 80AD957C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AD9580  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AD9584  7D 89 03 A6 */	mtctr r12
/* 80AD9588  4E 80 04 21 */	bctrl 
/* 80AD958C  48 00 01 3C */	b lbl_80AD96C8
lbl_80AD9590:
/* 80AD9590  7F E3 FB 78 */	mr r3, r31
/* 80AD9594  38 80 00 03 */	li r4, 3
/* 80AD9598  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AD959C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AD95A0  7D 89 03 A6 */	mtctr r12
/* 80AD95A4  4E 80 04 21 */	bctrl 
/* 80AD95A8  48 00 01 20 */	b lbl_80AD96C8
lbl_80AD95AC:
/* 80AD95AC  7F E3 FB 78 */	mr r3, r31
/* 80AD95B0  38 80 00 01 */	li r4, 1
/* 80AD95B4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AD95B8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AD95BC  7D 89 03 A6 */	mtctr r12
/* 80AD95C0  4E 80 04 21 */	bctrl 
/* 80AD95C4  48 00 01 04 */	b lbl_80AD96C8
lbl_80AD95C8:
/* 80AD95C8  7F E3 FB 78 */	mr r3, r31
/* 80AD95CC  38 80 00 02 */	li r4, 2
/* 80AD95D0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AD95D4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AD95D8  7D 89 03 A6 */	mtctr r12
/* 80AD95DC  4E 80 04 21 */	bctrl 
/* 80AD95E0  48 00 00 E8 */	b lbl_80AD96C8
lbl_80AD95E4:
/* 80AD95E4  7F E3 FB 78 */	mr r3, r31
/* 80AD95E8  38 80 00 00 */	li r4, 0
/* 80AD95EC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AD95F0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AD95F4  7D 89 03 A6 */	mtctr r12
/* 80AD95F8  4E 80 04 21 */	bctrl 
/* 80AD95FC  48 00 00 CC */	b lbl_80AD96C8
lbl_80AD9600:
/* 80AD9600  7F E3 FB 78 */	mr r3, r31
/* 80AD9604  38 80 00 04 */	li r4, 4
/* 80AD9608  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AD960C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AD9610  7D 89 03 A6 */	mtctr r12
/* 80AD9614  4E 80 04 21 */	bctrl 
/* 80AD9618  48 00 00 B0 */	b lbl_80AD96C8
lbl_80AD961C:
/* 80AD961C  7F E3 FB 78 */	mr r3, r31
/* 80AD9620  38 80 00 05 */	li r4, 5
/* 80AD9624  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AD9628  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AD962C  7D 89 03 A6 */	mtctr r12
/* 80AD9630  4E 80 04 21 */	bctrl 
/* 80AD9634  48 00 00 94 */	b lbl_80AD96C8
lbl_80AD9638:
/* 80AD9638  7F E3 FB 78 */	mr r3, r31
/* 80AD963C  38 80 00 06 */	li r4, 6
/* 80AD9640  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AD9644  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AD9648  7D 89 03 A6 */	mtctr r12
/* 80AD964C  4E 80 04 21 */	bctrl 
/* 80AD9650  48 00 00 78 */	b lbl_80AD96C8
lbl_80AD9654:
/* 80AD9654  7F E3 FB 78 */	mr r3, r31
/* 80AD9658  38 80 00 07 */	li r4, 7
/* 80AD965C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AD9660  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AD9664  7D 89 03 A6 */	mtctr r12
/* 80AD9668  4E 80 04 21 */	bctrl 
/* 80AD966C  48 00 00 5C */	b lbl_80AD96C8
lbl_80AD9670:
/* 80AD9670  7F E3 FB 78 */	mr r3, r31
/* 80AD9674  38 80 00 0A */	li r4, 0xa
/* 80AD9678  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AD967C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AD9680  7D 89 03 A6 */	mtctr r12
/* 80AD9684  4E 80 04 21 */	bctrl 
/* 80AD9688  48 00 00 40 */	b lbl_80AD96C8
lbl_80AD968C:
/* 80AD968C  7F E3 FB 78 */	mr r3, r31
/* 80AD9690  38 80 00 08 */	li r4, 8
/* 80AD9694  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AD9698  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AD969C  7D 89 03 A6 */	mtctr r12
/* 80AD96A0  4E 80 04 21 */	bctrl 
/* 80AD96A4  48 00 00 24 */	b lbl_80AD96C8
lbl_80AD96A8:
/* 80AD96A8  7F E3 FB 78 */	mr r3, r31
/* 80AD96AC  38 80 00 09 */	li r4, 9
/* 80AD96B0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AD96B4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AD96B8  7D 89 03 A6 */	mtctr r12
/* 80AD96BC  4E 80 04 21 */	bctrl 
/* 80AD96C0  48 00 00 08 */	b lbl_80AD96C8
lbl_80AD96C4:
/* 80AD96C4  3B A0 00 00 */	li r29, 0
lbl_80AD96C8:
/* 80AD96C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AD96CC  40 82 00 0C */	bne lbl_80AD96D8
/* 80AD96D0  38 60 00 00 */	li r3, 0
/* 80AD96D4  48 00 00 60 */	b lbl_80AD9734
lbl_80AD96D8:
/* 80AD96D8  28 1D 00 00 */	cmplwi r29, 0
/* 80AD96DC  40 82 00 0C */	bne lbl_80AD96E8
/* 80AD96E0  38 60 00 01 */	li r3, 1
/* 80AD96E4  48 00 00 50 */	b lbl_80AD9734
lbl_80AD96E8:
/* 80AD96E8  7F E3 FB 78 */	mr r3, r31
/* 80AD96EC  7F A4 EB 78 */	mr r4, r29
/* 80AD96F0  3C A0 80 AE */	lis r5, lit_4497@ha /* 0x80AE2068@ha */
/* 80AD96F4  C0 25 20 68 */	lfs f1, lit_4497@l(r5)  /* 0x80AE2068@l */
/* 80AD96F8  7F 85 E3 78 */	mr r5, r28
/* 80AD96FC  38 C0 00 00 */	li r6, 0
/* 80AD9700  38 E0 FF FF */	li r7, -1
/* 80AD9704  7F C8 F3 78 */	mr r8, r30
/* 80AD9708  4B 67 95 79 */	bl setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib
/* 80AD970C  2C 03 00 00 */	cmpwi r3, 0
/* 80AD9710  41 82 00 20 */	beq lbl_80AD9730
/* 80AD9714  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80AD9718  60 00 01 40 */	ori r0, r0, 0x140
/* 80AD971C  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80AD9720  38 00 00 00 */	li r0, 0
/* 80AD9724  B0 1F 09 E4 */	sth r0, 0x9e4(r31)
/* 80AD9728  38 60 00 01 */	li r3, 1
/* 80AD972C  48 00 00 08 */	b lbl_80AD9734
lbl_80AD9730:
/* 80AD9730  38 60 00 00 */	li r3, 0
lbl_80AD9734:
/* 80AD9734  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD9738  4B 88 8A E9 */	bl _restgpr_27
/* 80AD973C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD9740  7C 08 03 A6 */	mtlr r0
/* 80AD9744  38 21 00 20 */	addi r1, r1, 0x20
/* 80AD9748  4E 80 00 20 */	blr 
