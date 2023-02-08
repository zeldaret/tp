lbl_80B1926C:
/* 80B1926C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B19270  7C 08 02 A6 */	mflr r0
/* 80B19274  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B19278  39 61 00 30 */	addi r11, r1, 0x30
/* 80B1927C  4B 84 8F 59 */	bl _savegpr_27
/* 80B19280  7C 7C 1B 78 */	mr r28, r3
/* 80B19284  A0 03 13 88 */	lhz r0, 0x1388(r3)
/* 80B19288  2C 00 00 02 */	cmpwi r0, 2
/* 80B1928C  41 82 00 74 */	beq lbl_80B19300
/* 80B19290  40 80 01 C4 */	bge lbl_80B19454
/* 80B19294  2C 00 00 00 */	cmpwi r0, 0
/* 80B19298  41 82 00 0C */	beq lbl_80B192A4
/* 80B1929C  48 00 01 B8 */	b lbl_80B19454
/* 80B192A0  48 00 01 B4 */	b lbl_80B19454
lbl_80B192A4:
/* 80B192A4  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 80B192A8  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80B192AC  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80B192B0  38 80 00 01 */	li r4, 1
/* 80B192B4  3C A0 80 B2 */	lis r5, lit_4538@ha /* 0x80B1DE0C@ha */
/* 80B192B8  C0 25 DE 0C */	lfs f1, lit_4538@l(r5)  /* 0x80B1DE0C@l */
/* 80B192BC  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B192C0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B192C4  7D 89 03 A6 */	mtctr r12
/* 80B192C8  4E 80 04 21 */	bctrl 
/* 80B192CC  7F 83 E3 78 */	mr r3, r28
/* 80B192D0  38 80 00 00 */	li r4, 0
/* 80B192D4  3C A0 80 B2 */	lis r5, lit_4538@ha /* 0x80B1DE0C@ha */
/* 80B192D8  C0 25 DE 0C */	lfs f1, lit_4538@l(r5)  /* 0x80B1DE0C@l */
/* 80B192DC  38 A0 00 00 */	li r5, 0
/* 80B192E0  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B192E4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B192E8  7D 89 03 A6 */	mtctr r12
/* 80B192EC  4E 80 04 21 */	bctrl 
/* 80B192F0  38 00 00 00 */	li r0, 0
/* 80B192F4  98 1C 13 8A */	stb r0, 0x138a(r28)
/* 80B192F8  38 00 00 02 */	li r0, 2
/* 80B192FC  B0 1C 13 88 */	sth r0, 0x1388(r28)
lbl_80B19300:
/* 80B19300  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B19304  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B19308  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 80B1930C  28 00 00 00 */	cmplwi r0, 0
/* 80B19310  41 82 01 44 */	beq lbl_80B19454
/* 80B19314  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80B19318  28 00 00 01 */	cmplwi r0, 1
/* 80B1931C  41 82 01 38 */	beq lbl_80B19454
/* 80B19320  3B DF 4F F8 */	addi r30, r31, 0x4ff8
/* 80B19324  7F C3 F3 78 */	mr r3, r30
/* 80B19328  3C 80 80 B2 */	lis r4, l_myName@ha /* 0x80B1E20C@ha */
/* 80B1932C  38 84 E2 0C */	addi r4, r4, l_myName@l /* 0x80B1E20C@l */
/* 80B19330  80 84 00 00 */	lwz r4, 0(r4)
/* 80B19334  38 A0 00 00 */	li r5, 0
/* 80B19338  38 C0 00 00 */	li r6, 0
/* 80B1933C  4B 52 E7 E1 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B19340  7C 7D 1B 78 */	mr r29, r3
/* 80B19344  2C 1D FF FF */	cmpwi r29, -1
/* 80B19348  41 82 01 0C */	beq lbl_80B19454
/* 80B1934C  7F C3 F3 78 */	mr r3, r30
/* 80B19350  7F A4 EB 78 */	mr r4, r29
/* 80B19354  4B 52 EC 09 */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80B19358  7C 7B 1B 78 */	mr r27, r3
/* 80B1935C  7F C3 F3 78 */	mr r3, r30
/* 80B19360  7F A4 EB 78 */	mr r4, r29
/* 80B19364  4B 52 E9 E9 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B19368  2C 03 00 00 */	cmpwi r3, 0
/* 80B1936C  41 82 00 64 */	beq lbl_80B193D0
/* 80B19370  80 9B 00 00 */	lwz r4, 0(r27)
/* 80B19374  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80B19378  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80B1937C  7C 04 00 00 */	cmpw r4, r0
/* 80B19380  41 82 00 0C */	beq lbl_80B1938C
/* 80B19384  40 80 00 4C */	bge lbl_80B193D0
/* 80B19388  48 00 00 48 */	b lbl_80B193D0
lbl_80B1938C:
/* 80B1938C  38 00 01 40 */	li r0, 0x140
/* 80B19390  90 1C 13 70 */	stw r0, 0x1370(r28)
/* 80B19394  3C 60 80 B2 */	lis r3, lit_6141@ha /* 0x80B1DF8C@ha */
/* 80B19398  C0 03 DF 8C */	lfs f0, lit_6141@l(r3)  /* 0x80B1DF8C@l */
/* 80B1939C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80B193A0  7F 83 E3 78 */	mr r3, r28
/* 80B193A4  38 80 00 02 */	li r4, 2
/* 80B193A8  3C A0 80 B2 */	lis r5, lit_4538@ha /* 0x80B1DE0C@ha */
/* 80B193AC  C0 25 DE 0C */	lfs f1, lit_4538@l(r5)  /* 0x80B1DE0C@l */
/* 80B193B0  38 A0 00 00 */	li r5, 0
/* 80B193B4  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B193B8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B193BC  7D 89 03 A6 */	mtctr r12
/* 80B193C0  4E 80 04 21 */	bctrl 
/* 80B193C4  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80B193C8  7F 84 E3 78 */	mr r4, r28
/* 80B193CC  4B 52 A2 C1 */	bl setPtT__14dEvt_control_cFPv
lbl_80B193D0:
/* 80B193D0  80 9B 00 00 */	lwz r4, 0(r27)
/* 80B193D4  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80B193D8  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80B193DC  7C 04 00 00 */	cmpw r4, r0
/* 80B193E0  41 82 00 28 */	beq lbl_80B19408
/* 80B193E4  40 80 00 70 */	bge lbl_80B19454
/* 80B193E8  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B193EC  7C 04 00 00 */	cmpw r4, r0
/* 80B193F0  40 80 00 08 */	bge lbl_80B193F8
/* 80B193F4  48 00 00 60 */	b lbl_80B19454
lbl_80B193F8:
/* 80B193F8  7F C3 F3 78 */	mr r3, r30
/* 80B193FC  7F A4 EB 78 */	mr r4, r29
/* 80B19400  4B 52 ED 7D */	bl cutEnd__16dEvent_manager_cFi
/* 80B19404  48 00 00 50 */	b lbl_80B19454
lbl_80B19408:
/* 80B19408  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050030@ha */
/* 80B1940C  38 03 00 30 */	addi r0, r3, 0x0030 /* 0x00050030@l */
/* 80B19410  90 01 00 08 */	stw r0, 8(r1)
/* 80B19414  38 7C 0B 48 */	addi r3, r28, 0xb48
/* 80B19418  38 81 00 08 */	addi r4, r1, 8
/* 80B1941C  38 A0 FF FF */	li r5, -1
/* 80B19420  81 9C 0B 48 */	lwz r12, 0xb48(r28)
/* 80B19424  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B19428  7D 89 03 A6 */	mtctr r12
/* 80B1942C  4E 80 04 21 */	bctrl 
/* 80B19430  38 7C 13 70 */	addi r3, r28, 0x1370
/* 80B19434  48 00 3F 35 */	bl func_80B1D368
/* 80B19438  2C 03 00 00 */	cmpwi r3, 0
/* 80B1943C  40 82 00 18 */	bne lbl_80B19454
/* 80B19440  7F C3 F3 78 */	mr r3, r30
/* 80B19444  7F A4 EB 78 */	mr r4, r29
/* 80B19448  4B 52 ED 35 */	bl cutEnd__16dEvent_manager_cFi
/* 80B1944C  7F 83 E3 78 */	mr r3, r28
/* 80B19450  4B 50 08 2D */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80B19454:
/* 80B19454  39 61 00 30 */	addi r11, r1, 0x30
/* 80B19458  4B 84 8D C9 */	bl _restgpr_27
/* 80B1945C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B19460  7C 08 03 A6 */	mtlr r0
/* 80B19464  38 21 00 30 */	addi r1, r1, 0x30
/* 80B19468  4E 80 00 20 */	blr 
