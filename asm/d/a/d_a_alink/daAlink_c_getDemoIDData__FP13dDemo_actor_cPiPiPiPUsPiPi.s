lbl_80119464:
/* 80119464  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80119468  7C 08 02 A6 */	mflr r0
/* 8011946C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80119470  39 61 00 60 */	addi r11, r1, 0x60
/* 80119474  48 24 8D 5D */	bl _savegpr_26
/* 80119478  7C 9A 23 78 */	mr r26, r4
/* 8011947C  7C BB 2B 78 */	mr r27, r5
/* 80119480  7C DC 33 78 */	mr r28, r6
/* 80119484  7C FD 3B 78 */	mr r29, r7
/* 80119488  7D 1E 43 78 */	mr r30, r8
/* 8011948C  7D 3F 4B 78 */	mr r31, r9
/* 80119490  80 03 00 50 */	lwz r0, 0x50(r3)
/* 80119494  90 01 00 14 */	stw r0, 0x14(r1)
/* 80119498  38 61 00 14 */	addi r3, r1, 0x14
/* 8011949C  38 81 00 30 */	addi r4, r1, 0x30
/* 801194A0  48 17 05 E1 */	bl getData__Q47JStudio3stb4data22TParse_TParagraph_dataCFPQ57JStudio3stb4data22TParse_TParagraph_data5TData
/* 801194A4  88 0D 8A 3C */	lbz r0, struct_80450FBC+0x0(r13)
/* 801194A8  7C 00 07 75 */	extsb. r0, r0
/* 801194AC  40 82 00 24 */	bne lbl_801194D0
/* 801194B0  38 00 00 00 */	li r0, 0
/* 801194B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801194B8  38 61 00 0C */	addi r3, r1, 0xc
/* 801194BC  3C 80 80 42 */	lis r4, dummy@ha
/* 801194C0  38 84 56 B8 */	addi r4, r4, dummy@l
/* 801194C4  48 17 05 BD */	bl getData__Q47JStudio3stb4data22TParse_TParagraph_dataCFPQ57JStudio3stb4data22TParse_TParagraph_data5TData
/* 801194C8  38 00 00 01 */	li r0, 1
/* 801194CC  98 0D 8A 3C */	stb r0, struct_80450FBC+0x0(r13)
lbl_801194D0:
/* 801194D0  88 0D 8A 3D */	lbz r0, struct_80450FBC+0x1(r13)
/* 801194D4  7C 00 07 75 */	extsb. r0, r0
/* 801194D8  40 82 00 1C */	bne lbl_801194F4
/* 801194DC  3C 60 80 42 */	lis r3, dummy@ha
/* 801194E0  38 63 56 B8 */	addi r3, r3, dummy@l
/* 801194E4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801194E8  90 0D 8A 40 */	stw r0, it(r13)
/* 801194EC  38 00 00 01 */	li r0, 1
/* 801194F0  98 0D 8A 3D */	stb r0, struct_80450FBC+0x1(r13)
lbl_801194F4:
/* 801194F4  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 801194F8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801194FC  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80119500  54 00 10 3A */	slwi r0, r0, 2
/* 80119504  7C 05 02 14 */	add r0, r5, r0
/* 80119508  90 01 00 10 */	stw r0, 0x10(r1)
/* 8011950C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80119510  90 01 00 28 */	stw r0, 0x28(r1)
/* 80119514  80 8D 8A 40 */	lwz r4, it(r13)
/* 80119518  90 81 00 08 */	stw r4, 8(r1)
/* 8011951C  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80119520  7C 04 00 40 */	cmplw r4, r0
/* 80119524  40 82 00 1C */	bne lbl_80119540
/* 80119528  3C 60 80 42 */	lis r3, dummy@ha
/* 8011952C  38 63 56 B8 */	addi r3, r3, dummy@l
/* 80119530  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80119534  90 0D 8A 40 */	stw r0, it(r13)
/* 80119538  38 60 00 00 */	li r3, 0
/* 8011953C  48 00 00 6C */	b lbl_801195A8
lbl_80119540:
/* 80119540  3C 60 80 42 */	lis r3, dummy@ha
/* 80119544  38 63 56 B8 */	addi r3, r3, dummy@l
/* 80119548  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8011954C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80119550  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80119554  90 81 00 20 */	stw r4, 0x20(r1)
/* 80119558  7C 04 00 40 */	cmplw r4, r0
/* 8011955C  40 82 00 08 */	bne lbl_80119564
/* 80119560  90 AD 8A 40 */	stw r5, it(r13)
lbl_80119564:
/* 80119564  80 6D 8A 40 */	lwz r3, it(r13)
/* 80119568  80 63 00 00 */	lwz r3, 0(r3)
/* 8011956C  54 60 17 BE */	srwi r0, r3, 0x1e
/* 80119570  90 1A 00 00 */	stw r0, 0(r26)
/* 80119574  54 60 47 3E */	rlwinm r0, r3, 8, 0x1c, 0x1f
/* 80119578  90 1B 00 00 */	stw r0, 0(r27)
/* 8011957C  54 60 4F FE */	rlwinm r0, r3, 9, 0x1f, 0x1f
/* 80119580  90 1F 00 00 */	stw r0, 0(r31)
/* 80119584  54 60 87 3E */	rlwinm r0, r3, 0x10, 0x1c, 0x1f
/* 80119588  90 1C 00 00 */	stw r0, 0(r28)
/* 8011958C  B0 7D 00 00 */	sth r3, 0(r29)
/* 80119590  54 60 67 7E */	rlwinm r0, r3, 0xc, 0x1d, 0x1f
/* 80119594  90 1E 00 00 */	stw r0, 0(r30)
/* 80119598  80 6D 8A 40 */	lwz r3, it(r13)
/* 8011959C  38 03 00 04 */	addi r0, r3, 4
/* 801195A0  90 0D 8A 40 */	stw r0, it(r13)
/* 801195A4  38 60 00 01 */	li r3, 1
lbl_801195A8:
/* 801195A8  39 61 00 60 */	addi r11, r1, 0x60
/* 801195AC  48 24 8C 71 */	bl _restgpr_26
/* 801195B0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801195B4  7C 08 03 A6 */	mtlr r0
/* 801195B8  38 21 00 60 */	addi r1, r1, 0x60
/* 801195BC  4E 80 00 20 */	blr 
