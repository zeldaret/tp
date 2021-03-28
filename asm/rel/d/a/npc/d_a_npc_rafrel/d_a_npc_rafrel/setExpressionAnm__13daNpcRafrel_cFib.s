lbl_80ABA6E4:
/* 80ABA6E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80ABA6E8  7C 08 02 A6 */	mflr r0
/* 80ABA6EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ABA6F0  39 61 00 20 */	addi r11, r1, 0x20
/* 80ABA6F4  4B 8A 7A E0 */	b _savegpr_27
/* 80ABA6F8  7C 7B 1B 78 */	mr r27, r3
/* 80ABA6FC  7C 9C 23 78 */	mr r28, r4
/* 80ABA700  7C BD 2B 78 */	mr r29, r5
/* 80ABA704  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 80ABA708  54 00 06 A4 */	rlwinm r0, r0, 0, 0x1a, 0x12
/* 80ABA70C  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80ABA710  1F DC 00 0C */	mulli r30, r28, 0xc
/* 80ABA714  3C 80 80 AC */	lis r4, l_bckGetParamList@ha
/* 80ABA718  38 84 FE A0 */	addi r4, r4, l_bckGetParamList@l
/* 80ABA71C  7C A4 F0 2E */	lwzx r5, r4, r30
/* 80ABA720  2C 05 00 00 */	cmpwi r5, 0
/* 80ABA724  41 80 00 24 */	blt lbl_80ABA748
/* 80ABA728  7C 84 F2 14 */	add r4, r4, r30
/* 80ABA72C  80 04 00 08 */	lwz r0, 8(r4)
/* 80ABA730  54 00 10 3A */	slwi r0, r0, 2
/* 80ABA734  3C 80 80 AC */	lis r4, l_arcNames@ha
/* 80ABA738  38 84 00 98 */	addi r4, r4, l_arcNames@l
/* 80ABA73C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80ABA740  4B 69 83 EC */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80ABA744  48 00 00 08 */	b lbl_80ABA74C
lbl_80ABA748:
/* 80ABA748  38 60 00 00 */	li r3, 0
lbl_80ABA74C:
/* 80ABA74C  7C 7F 1B 78 */	mr r31, r3
/* 80ABA750  3C 60 80 AC */	lis r3, l_bckGetParamList@ha
/* 80ABA754  38 03 FE A0 */	addi r0, r3, l_bckGetParamList@l
/* 80ABA758  7C 60 F2 14 */	add r3, r0, r30
/* 80ABA75C  83 C3 00 04 */	lwz r30, 4(r3)
/* 80ABA760  38 60 00 00 */	li r3, 0
/* 80ABA764  28 1C 00 07 */	cmplwi r28, 7
/* 80ABA768  41 81 00 FC */	bgt lbl_80ABA864
/* 80ABA76C  3C 80 80 AC */	lis r4, lit_4544@ha
/* 80ABA770  38 84 01 64 */	addi r4, r4, lit_4544@l
/* 80ABA774  57 80 10 3A */	slwi r0, r28, 2
/* 80ABA778  7C 04 00 2E */	lwzx r0, r4, r0
/* 80ABA77C  7C 09 03 A6 */	mtctr r0
/* 80ABA780  4E 80 04 20 */	bctr 
lbl_80ABA784:
/* 80ABA784  7F 63 DB 78 */	mr r3, r27
/* 80ABA788  38 80 00 00 */	li r4, 0
/* 80ABA78C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80ABA790  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80ABA794  7D 89 03 A6 */	mtctr r12
/* 80ABA798  4E 80 04 21 */	bctrl 
/* 80ABA79C  48 00 00 CC */	b lbl_80ABA868
lbl_80ABA7A0:
/* 80ABA7A0  7F 63 DB 78 */	mr r3, r27
/* 80ABA7A4  38 80 00 00 */	li r4, 0
/* 80ABA7A8  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80ABA7AC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80ABA7B0  7D 89 03 A6 */	mtctr r12
/* 80ABA7B4  4E 80 04 21 */	bctrl 
/* 80ABA7B8  48 00 00 B0 */	b lbl_80ABA868
lbl_80ABA7BC:
/* 80ABA7BC  7F 63 DB 78 */	mr r3, r27
/* 80ABA7C0  38 80 00 00 */	li r4, 0
/* 80ABA7C4  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80ABA7C8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80ABA7CC  7D 89 03 A6 */	mtctr r12
/* 80ABA7D0  4E 80 04 21 */	bctrl 
/* 80ABA7D4  48 00 00 94 */	b lbl_80ABA868
lbl_80ABA7D8:
/* 80ABA7D8  7F 63 DB 78 */	mr r3, r27
/* 80ABA7DC  38 80 00 00 */	li r4, 0
/* 80ABA7E0  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80ABA7E4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80ABA7E8  7D 89 03 A6 */	mtctr r12
/* 80ABA7EC  4E 80 04 21 */	bctrl 
/* 80ABA7F0  48 00 00 78 */	b lbl_80ABA868
lbl_80ABA7F4:
/* 80ABA7F4  7F 63 DB 78 */	mr r3, r27
/* 80ABA7F8  38 80 00 01 */	li r4, 1
/* 80ABA7FC  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80ABA800  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80ABA804  7D 89 03 A6 */	mtctr r12
/* 80ABA808  4E 80 04 21 */	bctrl 
/* 80ABA80C  48 00 00 5C */	b lbl_80ABA868
lbl_80ABA810:
/* 80ABA810  7F 63 DB 78 */	mr r3, r27
/* 80ABA814  38 80 00 02 */	li r4, 2
/* 80ABA818  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80ABA81C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80ABA820  7D 89 03 A6 */	mtctr r12
/* 80ABA824  4E 80 04 21 */	bctrl 
/* 80ABA828  48 00 00 40 */	b lbl_80ABA868
lbl_80ABA82C:
/* 80ABA82C  7F 63 DB 78 */	mr r3, r27
/* 80ABA830  38 80 00 00 */	li r4, 0
/* 80ABA834  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80ABA838  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80ABA83C  7D 89 03 A6 */	mtctr r12
/* 80ABA840  4E 80 04 21 */	bctrl 
/* 80ABA844  48 00 00 24 */	b lbl_80ABA868
lbl_80ABA848:
/* 80ABA848  7F 63 DB 78 */	mr r3, r27
/* 80ABA84C  38 80 00 00 */	li r4, 0
/* 80ABA850  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80ABA854  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80ABA858  7D 89 03 A6 */	mtctr r12
/* 80ABA85C  4E 80 04 21 */	bctrl 
/* 80ABA860  48 00 00 08 */	b lbl_80ABA868
lbl_80ABA864:
/* 80ABA864  3B E0 00 00 */	li r31, 0
lbl_80ABA868:
/* 80ABA868  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80ABA86C  40 82 00 0C */	bne lbl_80ABA878
/* 80ABA870  38 60 00 00 */	li r3, 0
/* 80ABA874  48 00 00 60 */	b lbl_80ABA8D4
lbl_80ABA878:
/* 80ABA878  28 1F 00 00 */	cmplwi r31, 0
/* 80ABA87C  40 82 00 0C */	bne lbl_80ABA888
/* 80ABA880  38 60 00 01 */	li r3, 1
/* 80ABA884  48 00 00 50 */	b lbl_80ABA8D4
lbl_80ABA888:
/* 80ABA888  7F 63 DB 78 */	mr r3, r27
/* 80ABA88C  7F E4 FB 78 */	mr r4, r31
/* 80ABA890  3C A0 80 AC */	lis r5, lit_4320@ha
/* 80ABA894  C0 25 FA 64 */	lfs f1, lit_4320@l(r5)
/* 80ABA898  7F C5 F3 78 */	mr r5, r30
/* 80ABA89C  38 C0 00 00 */	li r6, 0
/* 80ABA8A0  38 E0 FF FF */	li r7, -1
/* 80ABA8A4  7F A8 EB 78 */	mr r8, r29
/* 80ABA8A8  4B 69 83 D8 */	b setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib
/* 80ABA8AC  2C 03 00 00 */	cmpwi r3, 0
/* 80ABA8B0  41 82 00 20 */	beq lbl_80ABA8D0
/* 80ABA8B4  80 1B 09 9C */	lwz r0, 0x99c(r27)
/* 80ABA8B8  60 00 01 40 */	ori r0, r0, 0x140
/* 80ABA8BC  90 1B 09 9C */	stw r0, 0x99c(r27)
/* 80ABA8C0  38 00 00 00 */	li r0, 0
/* 80ABA8C4  B0 1B 09 E4 */	sth r0, 0x9e4(r27)
/* 80ABA8C8  38 60 00 01 */	li r3, 1
/* 80ABA8CC  48 00 00 08 */	b lbl_80ABA8D4
lbl_80ABA8D0:
/* 80ABA8D0  38 60 00 00 */	li r3, 0
lbl_80ABA8D4:
/* 80ABA8D4  39 61 00 20 */	addi r11, r1, 0x20
/* 80ABA8D8  4B 8A 79 48 */	b _restgpr_27
/* 80ABA8DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ABA8E0  7C 08 03 A6 */	mtlr r0
/* 80ABA8E4  38 21 00 20 */	addi r1, r1, 0x20
/* 80ABA8E8  4E 80 00 20 */	blr 
