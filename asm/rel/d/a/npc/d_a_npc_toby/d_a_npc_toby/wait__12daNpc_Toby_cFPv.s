lbl_80B226B0:
/* 80B226B0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B226B4  7C 08 02 A6 */	mflr r0
/* 80B226B8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B226BC  39 61 00 70 */	addi r11, r1, 0x70
/* 80B226C0  4B 83 FB 1D */	bl _savegpr_29
/* 80B226C4  7C 7E 1B 78 */	mr r30, r3
/* 80B226C8  3C 60 80 B2 */	lis r3, m__18daNpc_Toby_Param_c@ha /* 0x80B249E4@ha */
/* 80B226CC  3B E3 49 E4 */	addi r31, r3, m__18daNpc_Toby_Param_c@l /* 0x80B249E4@l */
/* 80B226D0  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80B226D4  2C 00 00 02 */	cmpwi r0, 2
/* 80B226D8  41 82 01 74 */	beq lbl_80B2284C
/* 80B226DC  40 80 06 A0 */	bge lbl_80B22D7C
/* 80B226E0  2C 00 00 00 */	cmpwi r0, 0
/* 80B226E4  40 80 00 0C */	bge lbl_80B226F0
/* 80B226E8  48 00 06 94 */	b lbl_80B22D7C
/* 80B226EC  48 00 06 90 */	b lbl_80B22D7C
lbl_80B226F0:
/* 80B226F0  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80B226F4  2C 00 00 00 */	cmpwi r0, 0
/* 80B226F8  40 82 01 54 */	bne lbl_80B2284C
/* 80B226FC  80 1E 0F F4 */	lwz r0, 0xff4(r30)
/* 80B22700  2C 00 00 00 */	cmpwi r0, 0
/* 80B22704  40 82 01 40 */	bne lbl_80B22844
/* 80B22708  88 1E 0F 84 */	lbz r0, 0xf84(r30)
/* 80B2270C  28 00 00 01 */	cmplwi r0, 1
/* 80B22710  40 82 00 70 */	bne lbl_80B22780
/* 80B22714  38 60 00 EF */	li r3, 0xef
/* 80B22718  4B 62 A3 95 */	bl daNpcT_chkEvtBit__FUl
/* 80B2271C  2C 03 00 00 */	cmpwi r3, 0
/* 80B22720  41 82 00 60 */	beq lbl_80B22780
/* 80B22724  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80B22728  2C 00 00 0C */	cmpwi r0, 0xc
/* 80B2272C  41 82 00 24 */	beq lbl_80B22750
/* 80B22730  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80B22734  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B22738  4B 62 31 61 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2273C  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80B22740  38 00 00 0C */	li r0, 0xc
/* 80B22744  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B22748  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B2274C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B22750:
/* 80B22750  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B22754  2C 00 00 0B */	cmpwi r0, 0xb
/* 80B22758  41 82 00 EC */	beq lbl_80B22844
/* 80B2275C  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80B22760  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B22764  4B 62 31 35 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B22768  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80B2276C  38 00 00 0B */	li r0, 0xb
/* 80B22770  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80B22774  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B22778  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80B2277C  48 00 00 C8 */	b lbl_80B22844
lbl_80B22780:
/* 80B22780  7F C3 F3 78 */	mr r3, r30
/* 80B22784  4B FF FE 91 */	bl chkAttnZra__12daNpc_Toby_cFv
/* 80B22788  2C 03 00 00 */	cmpwi r3, 0
/* 80B2278C  41 82 00 60 */	beq lbl_80B227EC
/* 80B22790  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80B22794  2C 00 00 10 */	cmpwi r0, 0x10
/* 80B22798  41 82 00 24 */	beq lbl_80B227BC
/* 80B2279C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80B227A0  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B227A4  4B 62 30 F5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B227A8  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80B227AC  38 00 00 10 */	li r0, 0x10
/* 80B227B0  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B227B4  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B227B8  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B227BC:
/* 80B227BC  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B227C0  2C 00 00 06 */	cmpwi r0, 6
/* 80B227C4  41 82 00 80 */	beq lbl_80B22844
/* 80B227C8  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80B227CC  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B227D0  4B 62 30 C9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B227D4  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80B227D8  38 00 00 06 */	li r0, 6
/* 80B227DC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80B227E0  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B227E4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80B227E8  48 00 00 5C */	b lbl_80B22844
lbl_80B227EC:
/* 80B227EC  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80B227F0  2C 00 00 10 */	cmpwi r0, 0x10
/* 80B227F4  41 82 00 24 */	beq lbl_80B22818
/* 80B227F8  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80B227FC  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B22800  4B 62 30 99 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B22804  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80B22808  38 00 00 10 */	li r0, 0x10
/* 80B2280C  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B22810  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B22814  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B22818:
/* 80B22818  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B2281C  2C 00 00 00 */	cmpwi r0, 0
/* 80B22820  41 82 00 24 */	beq lbl_80B22844
/* 80B22824  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80B22828  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B2282C  4B 62 30 6D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B22830  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80B22834  38 00 00 00 */	li r0, 0
/* 80B22838  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80B2283C  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B22840  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80B22844:
/* 80B22844  38 00 00 02 */	li r0, 2
/* 80B22848  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80B2284C:
/* 80B2284C  88 1E 0F 84 */	lbz r0, 0xf84(r30)
/* 80B22850  28 00 00 04 */	cmplwi r0, 4
/* 80B22854  40 82 00 20 */	bne lbl_80B22874
/* 80B22858  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80B2285C  28 00 00 00 */	cmplwi r0, 0
/* 80B22860  40 82 00 14 */	bne lbl_80B22874
/* 80B22864  38 00 00 04 */	li r0, 4
/* 80B22868  B0 1E 0E 30 */	sth r0, 0xe30(r30)
/* 80B2286C  38 00 00 01 */	li r0, 1
/* 80B22870  98 1E 0E 33 */	stb r0, 0xe33(r30)
lbl_80B22874:
/* 80B22874  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80B22878  2C 00 00 00 */	cmpwi r0, 0
/* 80B2287C  40 82 05 00 */	bne lbl_80B22D7C
/* 80B22880  80 1E 0F F4 */	lwz r0, 0xff4(r30)
/* 80B22884  2C 00 00 00 */	cmpwi r0, 0
/* 80B22888  41 82 00 1C */	beq lbl_80B228A4
/* 80B2288C  38 7E 0F F4 */	addi r3, r30, 0xff4
/* 80B22890  48 00 1E 99 */	bl func_80B24728
/* 80B22894  2C 03 00 00 */	cmpwi r3, 0
/* 80B22898  40 82 00 0C */	bne lbl_80B228A4
/* 80B2289C  38 00 00 01 */	li r0, 1
/* 80B228A0  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80B228A4:
/* 80B228A4  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B228A8  28 00 00 00 */	cmplwi r0, 0
/* 80B228AC  40 82 02 7C */	bne lbl_80B22B28
/* 80B228B0  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80B228B4  28 00 00 00 */	cmplwi r0, 0
/* 80B228B8  40 82 02 70 */	bne lbl_80B22B28
/* 80B228BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B228C0  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B228C4  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 80B228C8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80B228CC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B228D0  41 82 02 58 */	beq lbl_80B22B28
/* 80B228D4  38 61 00 40 */	addi r3, r1, 0x40
/* 80B228D8  7F C4 F3 78 */	mr r4, r30
/* 80B228DC  80 BD 5D AC */	lwz r5, 0x5dac(r29)
/* 80B228E0  4B 62 8B 0D */	bl getAttnPos__8daNpcT_cFP10fopAc_ac_c
/* 80B228E4  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 80B228E8  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80B228EC  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80B228F0  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80B228F4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80B228F8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B228FC  88 1E 10 00 */	lbz r0, 0x1000(r30)
/* 80B22900  28 00 00 00 */	cmplwi r0, 0
/* 80B22904  41 82 01 30 */	beq lbl_80B22A34
/* 80B22908  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80B2290C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80B22910  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B22914  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 80B22918  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B2291C  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 80B22920  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B22924  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 80B22928  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B2292C  7F C3 F3 78 */	mr r3, r30
/* 80B22930  38 81 00 34 */	addi r4, r1, 0x34
/* 80B22934  38 A1 00 28 */	addi r5, r1, 0x28
/* 80B22938  C0 3F 01 94 */	lfs f1, 0x194(r31)
/* 80B2293C  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
/* 80B22940  C0 7F 01 84 */	lfs f3, 0x184(r31)
/* 80B22944  A8 DE 0D 7A */	lha r6, 0xd7a(r30)
/* 80B22948  4B 62 83 A9 */	bl chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs
/* 80B2294C  7C 60 00 34 */	cntlzw r0, r3
/* 80B22950  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 80B22954  41 82 00 68 */	beq lbl_80B229BC
/* 80B22958  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80B2295C  2C 00 00 10 */	cmpwi r0, 0x10
/* 80B22960  41 82 00 24 */	beq lbl_80B22984
/* 80B22964  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80B22968  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B2296C  4B 62 2F 2D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B22970  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80B22974  38 00 00 10 */	li r0, 0x10
/* 80B22978  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B2297C  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B22980  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B22984:
/* 80B22984  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B22988  2C 00 00 00 */	cmpwi r0, 0
/* 80B2298C  41 82 00 24 */	beq lbl_80B229B0
/* 80B22990  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80B22994  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B22998  4B 62 2F 01 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2299C  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80B229A0  38 00 00 00 */	li r0, 0
/* 80B229A4  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80B229A8  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B229AC  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80B229B0:
/* 80B229B0  38 00 00 00 */	li r0, 0
/* 80B229B4  98 1E 10 00 */	stb r0, 0x1000(r30)
/* 80B229B8  48 00 01 DC */	b lbl_80B22B94
lbl_80B229BC:
/* 80B229BC  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B229C0  2C 00 00 18 */	cmpwi r0, 0x18
/* 80B229C4  40 82 01 D0 */	bne lbl_80B22B94
/* 80B229C8  80 1E 0B 84 */	lwz r0, 0xb84(r30)
/* 80B229CC  2C 00 00 02 */	cmpwi r0, 2
/* 80B229D0  40 80 00 34 */	bge lbl_80B22A04
/* 80B229D4  7F C3 F3 78 */	mr r3, r30
/* 80B229D8  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B229DC  4B 4F 7D 35 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B229E0  7C 64 1B 78 */	mr r4, r3
/* 80B229E4  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80B229E8  38 A0 10 00 */	li r5, 0x1000
/* 80B229EC  4B 74 DC E5 */	bl cLib_chaseS__FPsss
/* 80B229F0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B229F4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80B229F8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80B229FC  B0 1E 0D 7A */	sth r0, 0xd7a(r30)
/* 80B22A00  48 00 01 94 */	b lbl_80B22B94
lbl_80B22A04:
/* 80B22A04  40 81 01 90 */	ble lbl_80B22B94
/* 80B22A08  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501E8@ha */
/* 80B22A0C  38 03 01 E8 */	addi r0, r3, 0x01E8 /* 0x000501E8@l */
/* 80B22A10  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B22A14  38 7E 05 80 */	addi r3, r30, 0x580
/* 80B22A18  38 81 00 0C */	addi r4, r1, 0xc
/* 80B22A1C  38 A0 FF FF */	li r5, -1
/* 80B22A20  81 9E 05 80 */	lwz r12, 0x580(r30)
/* 80B22A24  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B22A28  7D 89 03 A6 */	mtctr r12
/* 80B22A2C  4E 80 04 21 */	bctrl 
/* 80B22A30  48 00 01 64 */	b lbl_80B22B94
lbl_80B22A34:
/* 80B22A34  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B22A38  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80B22A3C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B22A40  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 80B22A44  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B22A48  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 80B22A4C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B22A50  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 80B22A54  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B22A58  7F C3 F3 78 */	mr r3, r30
/* 80B22A5C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B22A60  38 A1 00 10 */	addi r5, r1, 0x10
/* 80B22A64  C0 3F 01 70 */	lfs f1, 0x170(r31)
/* 80B22A68  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
/* 80B22A6C  C0 7F 01 84 */	lfs f3, 0x184(r31)
/* 80B22A70  A8 DE 0D 7A */	lha r6, 0xd7a(r30)
/* 80B22A74  4B 62 82 7D */	bl chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs
/* 80B22A78  2C 03 00 00 */	cmpwi r3, 0
/* 80B22A7C  41 82 01 18 */	beq lbl_80B22B94
/* 80B22A80  7F C3 F3 78 */	mr r3, r30
/* 80B22A84  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B22A88  C0 3F 01 98 */	lfs f1, 0x198(r31)
/* 80B22A8C  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80B22A90  4B 62 81 41 */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80B22A94  2C 03 00 00 */	cmpwi r3, 0
/* 80B22A98  41 82 00 FC */	beq lbl_80B22B94
/* 80B22A9C  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80B22AA0  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B22AA4  41 82 00 24 */	beq lbl_80B22AC8
/* 80B22AA8  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80B22AAC  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B22AB0  4B 62 2D E9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B22AB4  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80B22AB8  38 00 00 0F */	li r0, 0xf
/* 80B22ABC  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B22AC0  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B22AC4  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B22AC8:
/* 80B22AC8  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B22ACC  2C 00 00 18 */	cmpwi r0, 0x18
/* 80B22AD0  41 82 00 24 */	beq lbl_80B22AF4
/* 80B22AD4  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80B22AD8  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B22ADC  4B 62 2D BD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B22AE0  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80B22AE4  38 00 00 18 */	li r0, 0x18
/* 80B22AE8  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80B22AEC  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B22AF0  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80B22AF4:
/* 80B22AF4  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501E7@ha */
/* 80B22AF8  38 03 01 E7 */	addi r0, r3, 0x01E7 /* 0x000501E7@l */
/* 80B22AFC  90 01 00 08 */	stw r0, 8(r1)
/* 80B22B00  38 7E 05 80 */	addi r3, r30, 0x580
/* 80B22B04  38 81 00 08 */	addi r4, r1, 8
/* 80B22B08  38 A0 FF FF */	li r5, -1
/* 80B22B0C  81 9E 05 80 */	lwz r12, 0x580(r30)
/* 80B22B10  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B22B14  7D 89 03 A6 */	mtctr r12
/* 80B22B18  4E 80 04 21 */	bctrl 
/* 80B22B1C  38 00 00 01 */	li r0, 1
/* 80B22B20  98 1E 10 00 */	stb r0, 0x1000(r30)
/* 80B22B24  48 00 00 70 */	b lbl_80B22B94
lbl_80B22B28:
/* 80B22B28  88 1E 10 00 */	lbz r0, 0x1000(r30)
/* 80B22B2C  28 00 00 00 */	cmplwi r0, 0
/* 80B22B30  41 82 00 64 */	beq lbl_80B22B94
/* 80B22B34  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80B22B38  2C 00 00 10 */	cmpwi r0, 0x10
/* 80B22B3C  41 82 00 24 */	beq lbl_80B22B60
/* 80B22B40  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80B22B44  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B22B48  4B 62 2D 51 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B22B4C  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80B22B50  38 00 00 10 */	li r0, 0x10
/* 80B22B54  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B22B58  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B22B5C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B22B60:
/* 80B22B60  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B22B64  2C 00 00 00 */	cmpwi r0, 0
/* 80B22B68  41 82 00 24 */	beq lbl_80B22B8C
/* 80B22B6C  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80B22B70  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B22B74  4B 62 2D 25 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B22B78  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80B22B7C  38 00 00 00 */	li r0, 0
/* 80B22B80  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80B22B84  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B22B88  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80B22B8C:
/* 80B22B8C  38 00 00 00 */	li r0, 0
/* 80B22B90  98 1E 10 00 */	stb r0, 0x1000(r30)
lbl_80B22B94:
/* 80B22B94  88 1E 10 00 */	lbz r0, 0x1000(r30)
/* 80B22B98  28 00 00 00 */	cmplwi r0, 0
/* 80B22B9C  41 82 00 10 */	beq lbl_80B22BAC
/* 80B22BA0  38 00 00 00 */	li r0, 0
/* 80B22BA4  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80B22BA8  48 00 01 D4 */	b lbl_80B22D7C
lbl_80B22BAC:
/* 80B22BAC  7F C3 F3 78 */	mr r3, r30
/* 80B22BB0  4B FF FA 65 */	bl chkAttnZra__12daNpc_Toby_cFv
/* 80B22BB4  2C 03 00 00 */	cmpwi r3, 0
/* 80B22BB8  41 82 00 0C */	beq lbl_80B22BC4
/* 80B22BBC  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80B22BC0  4B 62 2B 3D */	bl remove__18daNpcT_ActorMngr_cFv
lbl_80B22BC4:
/* 80B22BC4  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80B22BC8  4B 62 2B 41 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B22BCC  28 03 00 00 */	cmplwi r3, 0
/* 80B22BD0  41 82 01 0C */	beq lbl_80B22CDC
/* 80B22BD4  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B22BD8  28 00 00 00 */	cmplwi r0, 0
/* 80B22BDC  40 82 01 00 */	bne lbl_80B22CDC
/* 80B22BE0  3B A0 00 01 */	li r29, 1
/* 80B22BE4  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B22BE8  2C 00 00 01 */	cmpwi r0, 1
/* 80B22BEC  41 82 00 28 */	beq lbl_80B22C14
/* 80B22BF0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B22BF4  4B 62 2B 09 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B22BF8  38 00 00 00 */	li r0, 0
/* 80B22BFC  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B22C00  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B22C04  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B22C08  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B22C0C  38 00 00 01 */	li r0, 1
/* 80B22C10  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B22C14:
/* 80B22C14  38 00 00 00 */	li r0, 0
/* 80B22C18  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B22C1C  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80B22C20  4B 62 2A E9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B22C24  7C 64 1B 78 */	mr r4, r3
/* 80B22C28  7F C3 F3 78 */	mr r3, r30
/* 80B22C2C  C0 3E 0D F8 */	lfs f1, 0xdf8(r30)
/* 80B22C30  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80B22C34  4B 62 7F 9D */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80B22C38  2C 03 00 00 */	cmpwi r3, 0
/* 80B22C3C  40 82 00 3C */	bne lbl_80B22C78
/* 80B22C40  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B22C44  2C 00 00 00 */	cmpwi r0, 0
/* 80B22C48  41 82 00 24 */	beq lbl_80B22C6C
/* 80B22C4C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B22C50  4B 62 2A AD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B22C54  38 00 00 00 */	li r0, 0
/* 80B22C58  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B22C5C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B22C60  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B22C64  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B22C68  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B22C6C:
/* 80B22C6C  38 00 00 00 */	li r0, 0
/* 80B22C70  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B22C74  3B A0 00 00 */	li r29, 0
lbl_80B22C78:
/* 80B22C78  88 1E 0F 84 */	lbz r0, 0xf84(r30)
/* 80B22C7C  28 00 00 00 */	cmplwi r0, 0
/* 80B22C80  40 82 00 30 */	bne lbl_80B22CB0
/* 80B22C84  2C 1D 00 00 */	cmpwi r29, 0
/* 80B22C88  40 82 00 28 */	bne lbl_80B22CB0
/* 80B22C8C  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80B22C90  4B 62 2A 6D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B22C94  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80B22C98  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B22C9C  7C 03 00 00 */	cmpw r3, r0
/* 80B22CA0  40 82 00 DC */	bne lbl_80B22D7C
/* 80B22CA4  38 00 00 01 */	li r0, 1
/* 80B22CA8  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80B22CAC  48 00 00 D0 */	b lbl_80B22D7C
lbl_80B22CB0:
/* 80B22CB0  7F C3 F3 78 */	mr r3, r30
/* 80B22CB4  4B 62 86 85 */	bl srchPlayerActor__8daNpcT_cFv
/* 80B22CB8  2C 03 00 00 */	cmpwi r3, 0
/* 80B22CBC  40 82 00 C0 */	bne lbl_80B22D7C
/* 80B22CC0  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80B22CC4  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B22CC8  7C 03 00 00 */	cmpw r3, r0
/* 80B22CCC  40 82 00 B0 */	bne lbl_80B22D7C
/* 80B22CD0  38 00 00 01 */	li r0, 1
/* 80B22CD4  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80B22CD8  48 00 00 A4 */	b lbl_80B22D7C
lbl_80B22CDC:
/* 80B22CDC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B22CE0  2C 00 00 00 */	cmpwi r0, 0
/* 80B22CE4  41 82 00 24 */	beq lbl_80B22D08
/* 80B22CE8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B22CEC  4B 62 2A 11 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B22CF0  38 00 00 00 */	li r0, 0
/* 80B22CF4  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B22CF8  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B22CFC  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B22D00  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B22D04  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B22D08:
/* 80B22D08  38 00 00 00 */	li r0, 0
/* 80B22D0C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B22D10  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80B22D14  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B22D18  7C 04 00 00 */	cmpw r4, r0
/* 80B22D1C  41 82 00 58 */	beq lbl_80B22D74
/* 80B22D20  88 1E 0E 34 */	lbz r0, 0xe34(r30)
/* 80B22D24  28 00 00 00 */	cmplwi r0, 0
/* 80B22D28  41 82 00 30 */	beq lbl_80B22D58
/* 80B22D2C  7F C3 F3 78 */	mr r3, r30
/* 80B22D30  38 A0 00 10 */	li r5, 0x10
/* 80B22D34  38 C0 00 14 */	li r6, 0x14
/* 80B22D38  38 E0 00 0F */	li r7, 0xf
/* 80B22D3C  39 00 00 00 */	li r8, 0
/* 80B22D40  4B 62 89 09 */	bl step__8daNpcT_cFsiiii
/* 80B22D44  2C 03 00 00 */	cmpwi r3, 0
/* 80B22D48  41 82 00 20 */	beq lbl_80B22D68
/* 80B22D4C  38 00 00 01 */	li r0, 1
/* 80B22D50  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80B22D54  48 00 00 14 */	b lbl_80B22D68
lbl_80B22D58:
/* 80B22D58  7F C3 F3 78 */	mr r3, r30
/* 80B22D5C  4B 62 7C BD */	bl setAngle__8daNpcT_cFs
/* 80B22D60  38 00 00 01 */	li r0, 1
/* 80B22D64  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80B22D68:
/* 80B22D68  38 00 00 00 */	li r0, 0
/* 80B22D6C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80B22D70  48 00 00 0C */	b lbl_80B22D7C
lbl_80B22D74:
/* 80B22D74  7F C3 F3 78 */	mr r3, r30
/* 80B22D78  4B 62 85 C1 */	bl srchPlayerActor__8daNpcT_cFv
lbl_80B22D7C:
/* 80B22D7C  38 60 00 01 */	li r3, 1
/* 80B22D80  39 61 00 70 */	addi r11, r1, 0x70
/* 80B22D84  4B 83 F4 A5 */	bl _restgpr_29
/* 80B22D88  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B22D8C  7C 08 03 A6 */	mtlr r0
/* 80B22D90  38 21 00 70 */	addi r1, r1, 0x70
/* 80B22D94  4E 80 00 20 */	blr 
