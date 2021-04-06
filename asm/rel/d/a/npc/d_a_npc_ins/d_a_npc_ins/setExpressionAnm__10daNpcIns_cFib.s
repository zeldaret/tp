lbl_80A0F2F8:
/* 80A0F2F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A0F2FC  7C 08 02 A6 */	mflr r0
/* 80A0F300  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A0F304  39 61 00 20 */	addi r11, r1, 0x20
/* 80A0F308  4B 95 2E CD */	bl _savegpr_27
/* 80A0F30C  7C 7F 1B 78 */	mr r31, r3
/* 80A0F310  7C 9B 23 78 */	mr r27, r4
/* 80A0F314  7C BC 2B 78 */	mr r28, r5
/* 80A0F318  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 80A0F31C  54 00 06 A4 */	rlwinm r0, r0, 0, 0x1a, 0x12
/* 80A0F320  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80A0F324  1F BB 00 0C */	mulli r29, r27, 0xc
/* 80A0F328  3C 80 80 A1 */	lis r4, l_bckGetParamList@ha /* 0x80A141BC@ha */
/* 80A0F32C  38 84 41 BC */	addi r4, r4, l_bckGetParamList@l /* 0x80A141BC@l */
/* 80A0F330  7C A4 E8 2E */	lwzx r5, r4, r29
/* 80A0F334  2C 05 00 00 */	cmpwi r5, 0
/* 80A0F338  41 80 00 24 */	blt lbl_80A0F35C
/* 80A0F33C  7C 84 EA 14 */	add r4, r4, r29
/* 80A0F340  80 04 00 08 */	lwz r0, 8(r4)
/* 80A0F344  54 00 10 3A */	slwi r0, r0, 2
/* 80A0F348  3C 80 80 A1 */	lis r4, l_arcNames@ha /* 0x80A14384@ha */
/* 80A0F34C  38 84 43 84 */	addi r4, r4, l_arcNames@l /* 0x80A14384@l */
/* 80A0F350  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A0F354  4B 74 37 D9 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80A0F358  48 00 00 08 */	b lbl_80A0F360
lbl_80A0F35C:
/* 80A0F35C  38 60 00 00 */	li r3, 0
lbl_80A0F360:
/* 80A0F360  7C 7E 1B 78 */	mr r30, r3
/* 80A0F364  3C 60 80 A1 */	lis r3, l_bckGetParamList@ha /* 0x80A141BC@ha */
/* 80A0F368  38 03 41 BC */	addi r0, r3, l_bckGetParamList@l /* 0x80A141BC@l */
/* 80A0F36C  7C 60 EA 14 */	add r3, r0, r29
/* 80A0F370  83 A3 00 04 */	lwz r29, 4(r3)
/* 80A0F374  38 60 00 00 */	li r3, 0
/* 80A0F378  28 1B 00 09 */	cmplwi r27, 9
/* 80A0F37C  41 81 01 34 */	bgt lbl_80A0F4B0
/* 80A0F380  3C 80 80 A1 */	lis r4, lit_4650@ha /* 0x80A143B0@ha */
/* 80A0F384  38 84 43 B0 */	addi r4, r4, lit_4650@l /* 0x80A143B0@l */
/* 80A0F388  57 60 10 3A */	slwi r0, r27, 2
/* 80A0F38C  7C 04 00 2E */	lwzx r0, r4, r0
/* 80A0F390  7C 09 03 A6 */	mtctr r0
/* 80A0F394  4E 80 04 20 */	bctr 
lbl_80A0F398:
/* 80A0F398  7F E3 FB 78 */	mr r3, r31
/* 80A0F39C  38 80 00 00 */	li r4, 0
/* 80A0F3A0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A0F3A4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A0F3A8  7D 89 03 A6 */	mtctr r12
/* 80A0F3AC  4E 80 04 21 */	bctrl 
/* 80A0F3B0  48 00 01 04 */	b lbl_80A0F4B4
lbl_80A0F3B4:
/* 80A0F3B4  7F E3 FB 78 */	mr r3, r31
/* 80A0F3B8  38 80 00 01 */	li r4, 1
/* 80A0F3BC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A0F3C0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A0F3C4  7D 89 03 A6 */	mtctr r12
/* 80A0F3C8  4E 80 04 21 */	bctrl 
/* 80A0F3CC  48 00 00 E8 */	b lbl_80A0F4B4
lbl_80A0F3D0:
/* 80A0F3D0  7F E3 FB 78 */	mr r3, r31
/* 80A0F3D4  38 80 00 02 */	li r4, 2
/* 80A0F3D8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A0F3DC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A0F3E0  7D 89 03 A6 */	mtctr r12
/* 80A0F3E4  4E 80 04 21 */	bctrl 
/* 80A0F3E8  48 00 00 CC */	b lbl_80A0F4B4
lbl_80A0F3EC:
/* 80A0F3EC  7F E3 FB 78 */	mr r3, r31
/* 80A0F3F0  38 80 00 03 */	li r4, 3
/* 80A0F3F4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A0F3F8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A0F3FC  7D 89 03 A6 */	mtctr r12
/* 80A0F400  4E 80 04 21 */	bctrl 
/* 80A0F404  48 00 00 B0 */	b lbl_80A0F4B4
lbl_80A0F408:
/* 80A0F408  7F E3 FB 78 */	mr r3, r31
/* 80A0F40C  38 80 00 04 */	li r4, 4
/* 80A0F410  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A0F414  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A0F418  7D 89 03 A6 */	mtctr r12
/* 80A0F41C  4E 80 04 21 */	bctrl 
/* 80A0F420  48 00 00 94 */	b lbl_80A0F4B4
lbl_80A0F424:
/* 80A0F424  7F E3 FB 78 */	mr r3, r31
/* 80A0F428  38 80 00 00 */	li r4, 0
/* 80A0F42C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A0F430  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A0F434  7D 89 03 A6 */	mtctr r12
/* 80A0F438  4E 80 04 21 */	bctrl 
/* 80A0F43C  48 00 00 78 */	b lbl_80A0F4B4
lbl_80A0F440:
/* 80A0F440  7F E3 FB 78 */	mr r3, r31
/* 80A0F444  38 80 00 05 */	li r4, 5
/* 80A0F448  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A0F44C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A0F450  7D 89 03 A6 */	mtctr r12
/* 80A0F454  4E 80 04 21 */	bctrl 
/* 80A0F458  48 00 00 5C */	b lbl_80A0F4B4
lbl_80A0F45C:
/* 80A0F45C  7F E3 FB 78 */	mr r3, r31
/* 80A0F460  38 80 00 06 */	li r4, 6
/* 80A0F464  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A0F468  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A0F46C  7D 89 03 A6 */	mtctr r12
/* 80A0F470  4E 80 04 21 */	bctrl 
/* 80A0F474  48 00 00 40 */	b lbl_80A0F4B4
lbl_80A0F478:
/* 80A0F478  7F E3 FB 78 */	mr r3, r31
/* 80A0F47C  38 80 00 07 */	li r4, 7
/* 80A0F480  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A0F484  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A0F488  7D 89 03 A6 */	mtctr r12
/* 80A0F48C  4E 80 04 21 */	bctrl 
/* 80A0F490  48 00 00 24 */	b lbl_80A0F4B4
lbl_80A0F494:
/* 80A0F494  7F E3 FB 78 */	mr r3, r31
/* 80A0F498  38 80 00 00 */	li r4, 0
/* 80A0F49C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A0F4A0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A0F4A4  7D 89 03 A6 */	mtctr r12
/* 80A0F4A8  4E 80 04 21 */	bctrl 
/* 80A0F4AC  48 00 00 08 */	b lbl_80A0F4B4
lbl_80A0F4B0:
/* 80A0F4B0  3B C0 00 00 */	li r30, 0
lbl_80A0F4B4:
/* 80A0F4B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A0F4B8  40 82 00 0C */	bne lbl_80A0F4C4
/* 80A0F4BC  38 60 00 00 */	li r3, 0
/* 80A0F4C0  48 00 00 60 */	b lbl_80A0F520
lbl_80A0F4C4:
/* 80A0F4C4  28 1E 00 00 */	cmplwi r30, 0
/* 80A0F4C8  40 82 00 0C */	bne lbl_80A0F4D4
/* 80A0F4CC  38 60 00 01 */	li r3, 1
/* 80A0F4D0  48 00 00 50 */	b lbl_80A0F520
lbl_80A0F4D4:
/* 80A0F4D4  7F E3 FB 78 */	mr r3, r31
/* 80A0F4D8  7F C4 F3 78 */	mr r4, r30
/* 80A0F4DC  3C A0 80 A1 */	lis r5, lit_4414@ha /* 0x80A13EEC@ha */
/* 80A0F4E0  C0 25 3E EC */	lfs f1, lit_4414@l(r5)  /* 0x80A13EEC@l */
/* 80A0F4E4  7F A5 EB 78 */	mr r5, r29
/* 80A0F4E8  38 C0 00 00 */	li r6, 0
/* 80A0F4EC  38 E0 FF FF */	li r7, -1
/* 80A0F4F0  7F 88 E3 78 */	mr r8, r28
/* 80A0F4F4  4B 74 37 8D */	bl setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib
/* 80A0F4F8  2C 03 00 00 */	cmpwi r3, 0
/* 80A0F4FC  41 82 00 20 */	beq lbl_80A0F51C
/* 80A0F500  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80A0F504  60 00 01 40 */	ori r0, r0, 0x140
/* 80A0F508  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80A0F50C  38 00 00 00 */	li r0, 0
/* 80A0F510  B0 1F 09 E4 */	sth r0, 0x9e4(r31)
/* 80A0F514  38 60 00 01 */	li r3, 1
/* 80A0F518  48 00 00 08 */	b lbl_80A0F520
lbl_80A0F51C:
/* 80A0F51C  38 60 00 00 */	li r3, 0
lbl_80A0F520:
/* 80A0F520  39 61 00 20 */	addi r11, r1, 0x20
/* 80A0F524  4B 95 2C FD */	bl _restgpr_27
/* 80A0F528  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A0F52C  7C 08 03 A6 */	mtlr r0
/* 80A0F530  38 21 00 20 */	addi r1, r1, 0x20
/* 80A0F534  4E 80 00 20 */	blr 
