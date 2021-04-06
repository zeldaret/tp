lbl_806636EC:
/* 806636EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806636F0  7C 08 02 A6 */	mflr r0
/* 806636F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 806636F8  39 61 00 40 */	addi r11, r1, 0x40
/* 806636FC  4B CF EA C9 */	bl _savegpr_23
/* 80663700  7C 7F 1B 78 */	mr r31, r3
/* 80663704  3C 60 80 66 */	lis r3, lit_3768@ha /* 0x80667698@ha */
/* 80663708  3B C3 76 98 */	addi r30, r3, lit_3768@l /* 0x80667698@l */
/* 8066370C  88 1F 0A DD */	lbz r0, 0xadd(r31)
/* 80663710  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80663714  3B 9E 00 64 */	addi r28, r30, 0x64
/* 80663718  7F 9C 02 14 */	add r28, r28, r0
/* 8066371C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80663720  A0 9C 00 02 */	lhz r4, 2(r28)
/* 80663724  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80663728  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8066372C  3F A5 00 02 */	addis r29, r5, 2
/* 80663730  3B BD C2 F8 */	addi r29, r29, -15624
/* 80663734  7F A5 EB 78 */	mr r5, r29
/* 80663738  38 C0 00 80 */	li r6, 0x80
/* 8066373C  4B 9D 8B B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80663740  7C 79 1B 78 */	mr r25, r3
/* 80663744  80 1F 0A EC */	lwz r0, 0xaec(r31)
/* 80663748  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8066374C  41 82 00 0C */	beq lbl_80663758
/* 80663750  3A E0 00 15 */	li r23, 0x15
/* 80663754  48 00 00 08 */	b lbl_8066375C
lbl_80663758:
/* 80663758  A2 FC 00 00 */	lhz r23, 0(r28)
lbl_8066375C:
/* 8066375C  38 60 00 58 */	li r3, 0x58
/* 80663760  4B C6 B4 ED */	bl __nw__FUl
/* 80663764  7C 78 1B 79 */	or. r24, r3, r3
/* 80663768  41 82 00 70 */	beq lbl_806637D8
/* 8066376C  88 1F 0A DD */	lbz r0, 0xadd(r31)
/* 80663770  28 00 00 02 */	cmplwi r0, 2
/* 80663774  3F 40 00 08 */	lis r26, 8
/* 80663778  40 82 00 08 */	bne lbl_80663780
/* 8066377C  3B 40 00 00 */	li r26, 0
lbl_80663780:
/* 80663780  AB 79 00 06 */	lha r27, 6(r25)
/* 80663784  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80663788  56 E4 04 3E */	clrlwi r4, r23, 0x10
/* 8066378C  7F A5 EB 78 */	mr r5, r29
/* 80663790  38 C0 00 80 */	li r6, 0x80
/* 80663794  4B 9D 8B 59 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80663798  7C 64 1B 78 */	mr r4, r3
/* 8066379C  38 1F 0A 14 */	addi r0, r31, 0xa14
/* 806637A0  90 01 00 08 */	stw r0, 8(r1)
/* 806637A4  93 41 00 0C */	stw r26, 0xc(r1)
/* 806637A8  80 1C 00 08 */	lwz r0, 8(r28)
/* 806637AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 806637B0  7F 03 C3 78 */	mr r3, r24
/* 806637B4  38 A0 00 00 */	li r5, 0
/* 806637B8  38 C0 00 00 */	li r6, 0
/* 806637BC  7F 27 CB 78 */	mr r7, r25
/* 806637C0  39 00 00 00 */	li r8, 0
/* 806637C4  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 806637C8  7F 69 07 34 */	extsh r9, r27
/* 806637CC  39 40 FF FF */	li r10, -1
/* 806637D0  4B 9A D0 01 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806637D4  7C 78 1B 78 */	mr r24, r3
lbl_806637D8:
/* 806637D8  93 1F 05 78 */	stw r24, 0x578(r31)
/* 806637DC  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 806637E0  28 03 00 00 */	cmplwi r3, 0
/* 806637E4  41 82 00 10 */	beq lbl_806637F4
/* 806637E8  80 03 00 04 */	lwz r0, 4(r3)
/* 806637EC  28 00 00 00 */	cmplwi r0, 0
/* 806637F0  40 82 00 0C */	bne lbl_806637FC
lbl_806637F4:
/* 806637F4  38 60 00 00 */	li r3, 0
/* 806637F8  48 00 02 94 */	b lbl_80663A8C
lbl_806637FC:
/* 806637FC  90 1F 05 74 */	stw r0, 0x574(r31)
/* 80663800  7F E3 FB 78 */	mr r3, r31
/* 80663804  A0 9C 00 04 */	lhz r4, 4(r28)
/* 80663808  48 00 33 79 */	bl initBrk__11daCstatue_cFUs
/* 8066380C  2C 03 00 00 */	cmpwi r3, 0
/* 80663810  40 82 00 0C */	bne lbl_8066381C
/* 80663814  38 60 00 00 */	li r3, 0
/* 80663818  48 00 02 74 */	b lbl_80663A8C
lbl_8066381C:
/* 8066381C  A0 9C 00 06 */	lhz r4, 6(r28)
/* 80663820  28 04 00 00 */	cmplwi r4, 0
/* 80663824  41 82 00 50 */	beq lbl_80663874
/* 80663828  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 8066382C  7F A5 EB 78 */	mr r5, r29
/* 80663830  38 C0 00 80 */	li r6, 0x80
/* 80663834  4B 9D 8A B9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80663838  7C 65 1B 78 */	mr r5, r3
/* 8066383C  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80663840  80 83 00 04 */	lwz r4, 4(r3)
/* 80663844  38 7F 05 7C */	addi r3, r31, 0x57c
/* 80663848  38 84 00 58 */	addi r4, r4, 0x58
/* 8066384C  38 C0 00 01 */	li r6, 1
/* 80663850  38 E0 FF FF */	li r7, -1
/* 80663854  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80663858  39 00 00 00 */	li r8, 0
/* 8066385C  39 20 FF FF */	li r9, -1
/* 80663860  4B 9A 9D DD */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80663864  2C 03 00 00 */	cmpwi r3, 0
/* 80663868  40 82 00 0C */	bne lbl_80663874
/* 8066386C  38 60 00 00 */	li r3, 0
/* 80663870  48 00 02 1C */	b lbl_80663A8C
lbl_80663874:
/* 80663874  38 00 00 00 */	li r0, 0
/* 80663878  88 7F 0A DD */	lbz r3, 0xadd(r31)
/* 8066387C  28 03 00 04 */	cmplwi r3, 4
/* 80663880  41 82 00 0C */	beq lbl_8066388C
/* 80663884  28 03 00 03 */	cmplwi r3, 3
/* 80663888  40 82 00 08 */	bne lbl_80663890
lbl_8066388C:
/* 8066388C  38 00 00 01 */	li r0, 1
lbl_80663890:
/* 80663890  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80663894  41 82 00 40 */	beq lbl_806638D4
/* 80663898  38 60 0B 08 */	li r3, 0xb08
/* 8066389C  4B C6 B4 29 */	bl __nwa__FUl
/* 806638A0  3C 80 80 66 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x80663C3C@ha */
/* 806638A4  38 84 3C 3C */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x80663C3C@l */
/* 806638A8  3C A0 80 66 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x80663B70@ha */
/* 806638AC  38 A5 3B 70 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x80663B70@l */
/* 806638B0  38 C0 01 38 */	li r6, 0x138
/* 806638B4  38 E0 00 09 */	li r7, 9
/* 806638B8  4B CF E6 5D */	bl __construct_new_array
/* 806638BC  90 7F 0A 08 */	stw r3, 0xa08(r31)
/* 806638C0  80 1F 0A 08 */	lwz r0, 0xa08(r31)
/* 806638C4  28 00 00 00 */	cmplwi r0, 0
/* 806638C8  40 82 01 C0 */	bne lbl_80663A88
/* 806638CC  38 60 00 00 */	li r3, 0
/* 806638D0  48 00 01 BC */	b lbl_80663A8C
lbl_806638D4:
/* 806638D4  28 03 00 00 */	cmplwi r3, 0
/* 806638D8  40 82 01 84 */	bne lbl_80663A5C
/* 806638DC  38 60 01 44 */	li r3, 0x144
/* 806638E0  4B C6 B3 6D */	bl __nw__FUl
/* 806638E4  7C 7A 1B 79 */	or. r26, r3, r3
/* 806638E8  41 82 00 5C */	beq lbl_80663944
/* 806638EC  7F 57 D3 78 */	mr r23, r26
/* 806638F0  4B A2 01 39 */	bl __ct__12dCcD_GObjInfFv
/* 806638F4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806638F8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806638FC  90 17 01 20 */	stw r0, 0x120(r23)
/* 80663900  3C 60 80 66 */	lis r3, __vt__8cM3dGAab@ha /* 0x80667B68@ha */
/* 80663904  38 03 7B 68 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80667B68@l */
/* 80663908  90 17 01 1C */	stw r0, 0x11c(r23)
/* 8066390C  38 77 01 24 */	addi r3, r23, 0x124
/* 80663910  4B C0 B6 79 */	bl __ct__8cM3dGCpsFv
/* 80663914  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha /* 0x803C3608@ha */
/* 80663918  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l /* 0x803C3608@l */
/* 8066391C  90 77 01 20 */	stw r3, 0x120(r23)
/* 80663920  38 03 00 58 */	addi r0, r3, 0x58
/* 80663924  90 17 01 3C */	stw r0, 0x13c(r23)
/* 80663928  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha /* 0x803AC170@ha */
/* 8066392C  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l /* 0x803AC170@l */
/* 80663930  90 77 00 3C */	stw r3, 0x3c(r23)
/* 80663934  38 03 00 2C */	addi r0, r3, 0x2c
/* 80663938  90 17 01 20 */	stw r0, 0x120(r23)
/* 8066393C  38 03 00 84 */	addi r0, r3, 0x84
/* 80663940  90 17 01 3C */	stw r0, 0x13c(r23)
lbl_80663944:
/* 80663944  93 5F 0A 00 */	stw r26, 0xa00(r31)
/* 80663948  80 1F 0A 00 */	lwz r0, 0xa00(r31)
/* 8066394C  28 00 00 00 */	cmplwi r0, 0
/* 80663950  40 82 00 0C */	bne lbl_8066395C
/* 80663954  38 60 00 00 */	li r3, 0
/* 80663958  48 00 01 34 */	b lbl_80663A8C
lbl_8066395C:
/* 8066395C  38 60 01 44 */	li r3, 0x144
/* 80663960  4B C6 B2 ED */	bl __nw__FUl
/* 80663964  7C 7A 1B 79 */	or. r26, r3, r3
/* 80663968  41 82 00 5C */	beq lbl_806639C4
/* 8066396C  7F 57 D3 78 */	mr r23, r26
/* 80663970  4B A2 00 B9 */	bl __ct__12dCcD_GObjInfFv
/* 80663974  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80663978  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8066397C  90 17 01 20 */	stw r0, 0x120(r23)
/* 80663980  3C 60 80 66 */	lis r3, __vt__8cM3dGAab@ha /* 0x80667B68@ha */
/* 80663984  38 03 7B 68 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80667B68@l */
/* 80663988  90 17 01 1C */	stw r0, 0x11c(r23)
/* 8066398C  38 77 01 24 */	addi r3, r23, 0x124
/* 80663990  4B C0 B5 F9 */	bl __ct__8cM3dGCpsFv
/* 80663994  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha /* 0x803C3608@ha */
/* 80663998  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l /* 0x803C3608@l */
/* 8066399C  90 77 01 20 */	stw r3, 0x120(r23)
/* 806639A0  38 03 00 58 */	addi r0, r3, 0x58
/* 806639A4  90 17 01 3C */	stw r0, 0x13c(r23)
/* 806639A8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha /* 0x803AC170@ha */
/* 806639AC  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l /* 0x803AC170@l */
/* 806639B0  90 77 00 3C */	stw r3, 0x3c(r23)
/* 806639B4  38 03 00 2C */	addi r0, r3, 0x2c
/* 806639B8  90 17 01 20 */	stw r0, 0x120(r23)
/* 806639BC  38 03 00 84 */	addi r0, r3, 0x84
/* 806639C0  90 17 01 3C */	stw r0, 0x13c(r23)
lbl_806639C4:
/* 806639C4  93 5F 0A 04 */	stw r26, 0xa04(r31)
/* 806639C8  80 1F 0A 04 */	lwz r0, 0xa04(r31)
/* 806639CC  28 00 00 00 */	cmplwi r0, 0
/* 806639D0  40 82 00 0C */	bne lbl_806639DC
/* 806639D4  38 60 00 00 */	li r3, 0
/* 806639D8  48 00 00 B4 */	b lbl_80663A8C
lbl_806639DC:
/* 806639DC  38 60 01 3C */	li r3, 0x13c
/* 806639E0  4B C6 B2 6D */	bl __nw__FUl
/* 806639E4  7C 7C 1B 79 */	or. r28, r3, r3
/* 806639E8  41 82 00 5C */	beq lbl_80663A44
/* 806639EC  4B A2 00 3D */	bl __ct__12dCcD_GObjInfFv
/* 806639F0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806639F4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806639F8  90 1C 01 20 */	stw r0, 0x120(r28)
/* 806639FC  3C 60 80 66 */	lis r3, __vt__8cM3dGAab@ha /* 0x80667B68@ha */
/* 80663A00  38 03 7B 68 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80667B68@l */
/* 80663A04  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80663A08  3C 60 80 66 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80667B5C@ha */
/* 80663A0C  38 03 7B 5C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80667B5C@l */
/* 80663A10  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80663A14  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80663A18  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80663A1C  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80663A20  38 03 00 58 */	addi r0, r3, 0x58
/* 80663A24  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80663A28  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80663A2C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80663A30  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80663A34  38 03 00 2C */	addi r0, r3, 0x2c
/* 80663A38  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80663A3C  38 03 00 84 */	addi r0, r3, 0x84
/* 80663A40  90 1C 01 38 */	stw r0, 0x138(r28)
lbl_80663A44:
/* 80663A44  93 9F 09 FC */	stw r28, 0x9fc(r31)
/* 80663A48  80 1F 09 FC */	lwz r0, 0x9fc(r31)
/* 80663A4C  28 00 00 00 */	cmplwi r0, 0
/* 80663A50  40 82 00 38 */	bne lbl_80663A88
/* 80663A54  38 60 00 00 */	li r3, 0
/* 80663A58  48 00 00 34 */	b lbl_80663A8C
lbl_80663A5C:
/* 80663A5C  28 03 00 02 */	cmplwi r3, 2
/* 80663A60  40 82 00 28 */	bne lbl_80663A88
/* 80663A64  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80663A68  80 83 00 04 */	lwz r4, 4(r3)
/* 80663A6C  38 7F 0A 0C */	addi r3, r31, 0xa0c
/* 80663A70  38 A0 00 01 */	li r5, 1
/* 80663A74  4B 9A AA C9 */	bl create__21mDoExt_invisibleModelFP8J3DModelUc
/* 80663A78  2C 03 00 00 */	cmpwi r3, 0
/* 80663A7C  40 82 00 0C */	bne lbl_80663A88
/* 80663A80  38 60 00 00 */	li r3, 0
/* 80663A84  48 00 00 08 */	b lbl_80663A8C
lbl_80663A88:
/* 80663A88  38 60 00 01 */	li r3, 1
lbl_80663A8C:
/* 80663A8C  39 61 00 40 */	addi r11, r1, 0x40
/* 80663A90  4B CF E7 81 */	bl _restgpr_23
/* 80663A94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80663A98  7C 08 03 A6 */	mtlr r0
/* 80663A9C  38 21 00 40 */	addi r1, r1, 0x40
/* 80663AA0  4E 80 00 20 */	blr 
