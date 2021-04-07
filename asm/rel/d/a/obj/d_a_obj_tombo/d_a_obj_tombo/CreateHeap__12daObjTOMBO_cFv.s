lbl_80D192E4:
/* 80D192E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D192E8  7C 08 02 A6 */	mflr r0
/* 80D192EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D192F0  39 61 00 30 */	addi r11, r1, 0x30
/* 80D192F4  4B 64 8E E5 */	bl _savegpr_28
/* 80D192F8  7C 7F 1B 78 */	mr r31, r3
/* 80D192FC  3C 60 80 D2 */	lis r3, d_a_obj_tombo__stringBase0@ha /* 0x80D1B7E8@ha */
/* 80D19300  38 63 B7 E8 */	addi r3, r3, d_a_obj_tombo__stringBase0@l /* 0x80D1B7E8@l */
/* 80D19304  38 80 00 09 */	li r4, 9
/* 80D19308  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1930C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D19310  3F C5 00 02 */	addis r30, r5, 2
/* 80D19314  3B DE C2 F8 */	addi r30, r30, -15624
/* 80D19318  7F C5 F3 78 */	mr r5, r30
/* 80D1931C  38 C0 00 80 */	li r6, 0x80
/* 80D19320  4B 32 2F CD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D19324  7C 7D 1B 78 */	mr r29, r3
/* 80D19328  38 60 00 58 */	li r3, 0x58
/* 80D1932C  4B 5B 59 21 */	bl __nw__FUl
/* 80D19330  7C 7C 1B 79 */	or. r28, r3, r3
/* 80D19334  41 82 00 68 */	beq lbl_80D1939C
/* 80D19338  3C 60 80 D2 */	lis r3, d_a_obj_tombo__stringBase0@ha /* 0x80D1B7E8@ha */
/* 80D1933C  38 63 B7 E8 */	addi r3, r3, d_a_obj_tombo__stringBase0@l /* 0x80D1B7E8@l */
/* 80D19340  38 80 00 06 */	li r4, 6
/* 80D19344  7F C5 F3 78 */	mr r5, r30
/* 80D19348  38 C0 00 80 */	li r6, 0x80
/* 80D1934C  4B 32 2F A1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D19350  7C 67 1B 78 */	mr r7, r3
/* 80D19354  38 1F 07 60 */	addi r0, r31, 0x760
/* 80D19358  90 01 00 08 */	stw r0, 8(r1)
/* 80D1935C  38 00 00 00 */	li r0, 0
/* 80D19360  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D19364  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 80D19368  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 80D1936C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D19370  7F 83 E3 78 */	mr r3, r28
/* 80D19374  7F A4 EB 78 */	mr r4, r29
/* 80D19378  38 A0 00 00 */	li r5, 0
/* 80D1937C  38 C0 00 00 */	li r6, 0
/* 80D19380  39 00 00 02 */	li r8, 2
/* 80D19384  3D 20 80 D2 */	lis r9, lit_3776@ha /* 0x80D1B6DC@ha */
/* 80D19388  C0 29 B6 DC */	lfs f1, lit_3776@l(r9)  /* 0x80D1B6DC@l */
/* 80D1938C  39 20 00 00 */	li r9, 0
/* 80D19390  39 40 FF FF */	li r10, -1
/* 80D19394  4B 2F 74 3D */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80D19398  7C 7C 1B 78 */	mr r28, r3
lbl_80D1939C:
/* 80D1939C  93 9F 08 30 */	stw r28, 0x830(r31)
/* 80D193A0  80 7F 08 30 */	lwz r3, 0x830(r31)
/* 80D193A4  28 03 00 00 */	cmplwi r3, 0
/* 80D193A8  41 82 00 10 */	beq lbl_80D193B8
/* 80D193AC  83 A3 00 04 */	lwz r29, 4(r3)
/* 80D193B0  28 1D 00 00 */	cmplwi r29, 0
/* 80D193B4  40 82 00 0C */	bne lbl_80D193C0
lbl_80D193B8:
/* 80D193B8  38 60 00 00 */	li r3, 0
/* 80D193BC  48 00 01 F8 */	b lbl_80D195B4
lbl_80D193C0:
/* 80D193C0  38 60 00 18 */	li r3, 0x18
/* 80D193C4  4B 5B 58 89 */	bl __nw__FUl
/* 80D193C8  7C 7C 1B 79 */	or. r28, r3, r3
/* 80D193CC  41 82 00 20 */	beq lbl_80D193EC
/* 80D193D0  3C 80 80 D2 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80D1B8CC@ha */
/* 80D193D4  38 04 B8 CC */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80D1B8CC@l */
/* 80D193D8  90 1C 00 00 */	stw r0, 0(r28)
/* 80D193DC  38 80 00 00 */	li r4, 0
/* 80D193E0  4B 60 F0 1D */	bl init__12J3DFrameCtrlFs
/* 80D193E4  38 00 00 00 */	li r0, 0
/* 80D193E8  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80D193EC:
/* 80D193EC  93 9F 07 48 */	stw r28, 0x748(r31)
/* 80D193F0  80 1F 07 48 */	lwz r0, 0x748(r31)
/* 80D193F4  28 00 00 00 */	cmplwi r0, 0
/* 80D193F8  40 82 00 0C */	bne lbl_80D19404
/* 80D193FC  38 60 00 00 */	li r3, 0
/* 80D19400  48 00 01 B4 */	b lbl_80D195B4
lbl_80D19404:
/* 80D19404  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80D19408  28 00 00 01 */	cmplwi r0, 1
/* 80D1940C  40 82 00 58 */	bne lbl_80D19464
/* 80D19410  3C 60 80 D2 */	lis r3, d_a_obj_tombo__stringBase0@ha /* 0x80D1B7E8@ha */
/* 80D19414  38 63 B7 E8 */	addi r3, r3, d_a_obj_tombo__stringBase0@l /* 0x80D1B7E8@l */
/* 80D19418  38 80 00 0C */	li r4, 0xc
/* 80D1941C  7F C5 F3 78 */	mr r5, r30
/* 80D19420  38 C0 00 80 */	li r6, 0x80
/* 80D19424  4B 32 2E C9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D19428  7C 65 1B 78 */	mr r5, r3
/* 80D1942C  80 9D 00 04 */	lwz r4, 4(r29)
/* 80D19430  80 7F 07 48 */	lwz r3, 0x748(r31)
/* 80D19434  38 84 00 58 */	addi r4, r4, 0x58
/* 80D19438  38 C0 00 01 */	li r6, 1
/* 80D1943C  38 E0 00 02 */	li r7, 2
/* 80D19440  3D 00 80 D2 */	lis r8, lit_3776@ha /* 0x80D1B6DC@ha */
/* 80D19444  C0 28 B6 DC */	lfs f1, lit_3776@l(r8)  /* 0x80D1B6DC@l */
/* 80D19448  39 00 00 00 */	li r8, 0
/* 80D1944C  39 20 FF FF */	li r9, -1
/* 80D19450  4B 2F 42 BD */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80D19454  2C 03 00 00 */	cmpwi r3, 0
/* 80D19458  40 82 00 60 */	bne lbl_80D194B8
/* 80D1945C  38 60 00 00 */	li r3, 0
/* 80D19460  48 00 01 54 */	b lbl_80D195B4
lbl_80D19464:
/* 80D19464  3C 60 80 D2 */	lis r3, d_a_obj_tombo__stringBase0@ha /* 0x80D1B7E8@ha */
/* 80D19468  38 63 B7 E8 */	addi r3, r3, d_a_obj_tombo__stringBase0@l /* 0x80D1B7E8@l */
/* 80D1946C  38 80 00 0D */	li r4, 0xd
/* 80D19470  7F C5 F3 78 */	mr r5, r30
/* 80D19474  38 C0 00 80 */	li r6, 0x80
/* 80D19478  4B 32 2E 75 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D1947C  7C 65 1B 78 */	mr r5, r3
/* 80D19480  80 9D 00 04 */	lwz r4, 4(r29)
/* 80D19484  80 7F 07 48 */	lwz r3, 0x748(r31)
/* 80D19488  38 84 00 58 */	addi r4, r4, 0x58
/* 80D1948C  38 C0 00 01 */	li r6, 1
/* 80D19490  38 E0 00 02 */	li r7, 2
/* 80D19494  3D 00 80 D2 */	lis r8, lit_3776@ha /* 0x80D1B6DC@ha */
/* 80D19498  C0 28 B6 DC */	lfs f1, lit_3776@l(r8)  /* 0x80D1B6DC@l */
/* 80D1949C  39 00 00 00 */	li r8, 0
/* 80D194A0  39 20 FF FF */	li r9, -1
/* 80D194A4  4B 2F 42 69 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80D194A8  2C 03 00 00 */	cmpwi r3, 0
/* 80D194AC  40 82 00 0C */	bne lbl_80D194B8
/* 80D194B0  38 60 00 00 */	li r3, 0
/* 80D194B4  48 00 01 00 */	b lbl_80D195B4
lbl_80D194B8:
/* 80D194B8  38 60 00 18 */	li r3, 0x18
/* 80D194BC  4B 5B 57 91 */	bl __nw__FUl
/* 80D194C0  7C 7C 1B 79 */	or. r28, r3, r3
/* 80D194C4  41 82 00 20 */	beq lbl_80D194E4
/* 80D194C8  3C 80 80 D2 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80D1B8CC@ha */
/* 80D194CC  38 04 B8 CC */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80D1B8CC@l */
/* 80D194D0  90 1C 00 00 */	stw r0, 0(r28)
/* 80D194D4  38 80 00 00 */	li r4, 0
/* 80D194D8  4B 60 EF 25 */	bl init__12J3DFrameCtrlFs
/* 80D194DC  38 00 00 00 */	li r0, 0
/* 80D194E0  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80D194E4:
/* 80D194E4  93 9F 07 4C */	stw r28, 0x74c(r31)
/* 80D194E8  80 1F 07 4C */	lwz r0, 0x74c(r31)
/* 80D194EC  28 00 00 00 */	cmplwi r0, 0
/* 80D194F0  40 82 00 0C */	bne lbl_80D194FC
/* 80D194F4  38 60 00 00 */	li r3, 0
/* 80D194F8  48 00 00 BC */	b lbl_80D195B4
lbl_80D194FC:
/* 80D194FC  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80D19500  28 00 00 01 */	cmplwi r0, 1
/* 80D19504  40 82 00 58 */	bne lbl_80D1955C
/* 80D19508  3C 60 80 D2 */	lis r3, d_a_obj_tombo__stringBase0@ha /* 0x80D1B7E8@ha */
/* 80D1950C  38 63 B7 E8 */	addi r3, r3, d_a_obj_tombo__stringBase0@l /* 0x80D1B7E8@l */
/* 80D19510  38 80 00 10 */	li r4, 0x10
/* 80D19514  7F C5 F3 78 */	mr r5, r30
/* 80D19518  38 C0 00 80 */	li r6, 0x80
/* 80D1951C  4B 32 2D D1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D19520  7C 65 1B 78 */	mr r5, r3
/* 80D19524  80 9D 00 04 */	lwz r4, 4(r29)
/* 80D19528  80 7F 07 4C */	lwz r3, 0x74c(r31)
/* 80D1952C  38 84 00 58 */	addi r4, r4, 0x58
/* 80D19530  38 C0 00 01 */	li r6, 1
/* 80D19534  38 E0 00 02 */	li r7, 2
/* 80D19538  3D 00 80 D2 */	lis r8, lit_3776@ha /* 0x80D1B6DC@ha */
/* 80D1953C  C0 28 B6 DC */	lfs f1, lit_3776@l(r8)  /* 0x80D1B6DC@l */
/* 80D19540  39 00 00 00 */	li r8, 0
/* 80D19544  39 20 FF FF */	li r9, -1
/* 80D19548  4B 2F 40 F5 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80D1954C  2C 03 00 00 */	cmpwi r3, 0
/* 80D19550  40 82 00 60 */	bne lbl_80D195B0
/* 80D19554  38 60 00 00 */	li r3, 0
/* 80D19558  48 00 00 5C */	b lbl_80D195B4
lbl_80D1955C:
/* 80D1955C  3C 60 80 D2 */	lis r3, d_a_obj_tombo__stringBase0@ha /* 0x80D1B7E8@ha */
/* 80D19560  38 63 B7 E8 */	addi r3, r3, d_a_obj_tombo__stringBase0@l /* 0x80D1B7E8@l */
/* 80D19564  38 80 00 11 */	li r4, 0x11
/* 80D19568  7F C5 F3 78 */	mr r5, r30
/* 80D1956C  38 C0 00 80 */	li r6, 0x80
/* 80D19570  4B 32 2D 7D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D19574  7C 65 1B 78 */	mr r5, r3
/* 80D19578  80 9D 00 04 */	lwz r4, 4(r29)
/* 80D1957C  80 7F 07 4C */	lwz r3, 0x74c(r31)
/* 80D19580  38 84 00 58 */	addi r4, r4, 0x58
/* 80D19584  38 C0 00 01 */	li r6, 1
/* 80D19588  38 E0 00 02 */	li r7, 2
/* 80D1958C  3D 00 80 D2 */	lis r8, lit_3776@ha /* 0x80D1B6DC@ha */
/* 80D19590  C0 28 B6 DC */	lfs f1, lit_3776@l(r8)  /* 0x80D1B6DC@l */
/* 80D19594  39 00 00 00 */	li r8, 0
/* 80D19598  39 20 FF FF */	li r9, -1
/* 80D1959C  4B 2F 40 A1 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80D195A0  2C 03 00 00 */	cmpwi r3, 0
/* 80D195A4  40 82 00 0C */	bne lbl_80D195B0
/* 80D195A8  38 60 00 00 */	li r3, 0
/* 80D195AC  48 00 00 08 */	b lbl_80D195B4
lbl_80D195B0:
/* 80D195B0  38 60 00 01 */	li r3, 1
lbl_80D195B4:
/* 80D195B4  39 61 00 30 */	addi r11, r1, 0x30
/* 80D195B8  4B 64 8C 6D */	bl _restgpr_28
/* 80D195BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D195C0  7C 08 03 A6 */	mtlr r0
/* 80D195C4  38 21 00 30 */	addi r1, r1, 0x30
/* 80D195C8  4E 80 00 20 */	blr 
