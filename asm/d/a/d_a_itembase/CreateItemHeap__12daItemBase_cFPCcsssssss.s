lbl_8014475C:
/* 8014475C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80144760  7C 08 02 A6 */	mflr r0
/* 80144764  90 01 00 44 */	stw r0, 0x44(r1)
/* 80144768  39 61 00 40 */	addi r11, r1, 0x40
/* 8014476C  48 21 DA 51 */	bl _savegpr_21
/* 80144770  7C 7F 1B 78 */	mr r31, r3
/* 80144774  7C 9E 23 78 */	mr r30, r4
/* 80144778  7C D7 33 78 */	mr r23, r6
/* 8014477C  7C F8 3B 78 */	mr r24, r7
/* 80144780  7D 19 43 78 */	mr r25, r8
/* 80144784  7D 5A 53 78 */	mr r26, r10
/* 80144788  AB 61 00 4A */	lha r27, 0x4a(r1)
/* 8014478C  7F C3 F3 78 */	mr r3, r30
/* 80144790  7C A4 07 34 */	extsh r4, r5
/* 80144794  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80144798  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8014479C  3F 85 00 02 */	addis r28, r5, 2
/* 801447A0  3B 9C C2 F8 */	addi r28, r28, -15624
/* 801447A4  7F 85 E3 78 */	mr r5, r28
/* 801447A8  38 C0 00 80 */	li r6, 0x80
/* 801447AC  4B EF 7B 41 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 801447B0  7C 7D 1B 78 */	mr r29, r3
/* 801447B4  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 801447B8  3A C3 00 84 */	addi r22, r3, 0x0084 /* 0x11000084@l */
/* 801447BC  3E A0 00 08 */	lis r21, 8
/* 801447C0  7E E0 07 35 */	extsh. r0, r23
/* 801447C4  40 81 00 08 */	ble lbl_801447CC
/* 801447C8  62 D6 02 00 */	ori r22, r22, 0x200
lbl_801447CC:
/* 801447CC  7F 00 07 35 */	extsh. r0, r24
/* 801447D0  40 81 00 08 */	ble lbl_801447D8
/* 801447D4  62 D6 00 01 */	ori r22, r22, 1
lbl_801447D8:
/* 801447D8  7F 60 07 35 */	extsh. r0, r27
/* 801447DC  40 81 00 08 */	ble lbl_801447E4
/* 801447E0  66 D6 00 02 */	oris r22, r22, 2
lbl_801447E4:
/* 801447E4  7F E3 FB 78 */	mr r3, r31
/* 801447E8  38 80 00 04 */	li r4, 4
/* 801447EC  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 801447F0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801447F4  7D 89 03 A6 */	mtctr r12
/* 801447F8  4E 80 04 21 */	bctrl 
/* 801447FC  2C 03 00 00 */	cmpwi r3, 0
/* 80144800  41 82 00 08 */	beq lbl_80144808
/* 80144804  3A A0 00 00 */	li r21, 0
lbl_80144808:
/* 80144808  7F A3 EB 78 */	mr r3, r29
/* 8014480C  7E A4 AB 78 */	mr r4, r21
/* 80144810  7E C5 B3 78 */	mr r5, r22
/* 80144814  4B ED 04 41 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80144818  90 7F 05 74 */	stw r3, 0x574(r31)
/* 8014481C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80144820  28 00 00 00 */	cmplwi r0, 0
/* 80144824  40 82 00 0C */	bne lbl_80144830
/* 80144828  38 60 00 00 */	li r3, 0
/* 8014482C  48 00 03 50 */	b lbl_80144B7C
lbl_80144830:
/* 80144830  38 00 00 00 */	li r0, 0
/* 80144834  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80144838  7E E0 07 35 */	extsh. r0, r23
/* 8014483C  40 81 00 88 */	ble lbl_801448C4
/* 80144840  7F C3 F3 78 */	mr r3, r30
/* 80144844  7E E4 07 34 */	extsh r4, r23
/* 80144848  7F 85 E3 78 */	mr r5, r28
/* 8014484C  38 C0 00 80 */	li r6, 0x80
/* 80144850  4B EF 7A 9D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80144854  7C 75 1B 78 */	mr r21, r3
/* 80144858  38 60 00 18 */	li r3, 0x18
/* 8014485C  48 18 A3 F1 */	bl __nw__FUl
/* 80144860  7C 77 1B 79 */	or. r23, r3, r3
/* 80144864  41 82 00 20 */	beq lbl_80144884
/* 80144868  3C 80 80 3A */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 8014486C  38 04 33 54 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 80144870  90 17 00 00 */	stw r0, 0(r23)
/* 80144874  38 80 00 00 */	li r4, 0
/* 80144878  48 1E 3B 85 */	bl init__12J3DFrameCtrlFs
/* 8014487C  38 00 00 00 */	li r0, 0
/* 80144880  90 17 00 14 */	stw r0, 0x14(r23)
lbl_80144884:
/* 80144884  92 FF 05 78 */	stw r23, 0x578(r31)
/* 80144888  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 8014488C  28 03 00 00 */	cmplwi r3, 0
/* 80144890  41 82 00 2C */	beq lbl_801448BC
/* 80144894  38 9D 00 58 */	addi r4, r29, 0x58
/* 80144898  7E A5 AB 78 */	mr r5, r21
/* 8014489C  38 C0 00 01 */	li r6, 1
/* 801448A0  38 E0 00 02 */	li r7, 2
/* 801448A4  C0 22 99 A8 */	lfs f1, lit_3881(r2)
/* 801448A8  39 00 00 00 */	li r8, 0
/* 801448AC  39 20 FF FF */	li r9, -1
/* 801448B0  4B EC 8D 8D */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 801448B4  2C 03 00 00 */	cmpwi r3, 0
/* 801448B8  40 82 00 0C */	bne lbl_801448C4
lbl_801448BC:
/* 801448BC  38 60 00 00 */	li r3, 0
/* 801448C0  48 00 02 BC */	b lbl_80144B7C
lbl_801448C4:
/* 801448C4  38 00 00 00 */	li r0, 0
/* 801448C8  90 1F 05 7C */	stw r0, 0x57c(r31)
/* 801448CC  7F 00 07 35 */	extsh. r0, r24
/* 801448D0  40 81 00 88 */	ble lbl_80144958
/* 801448D4  7F C3 F3 78 */	mr r3, r30
/* 801448D8  7F 04 07 34 */	extsh r4, r24
/* 801448DC  7F 85 E3 78 */	mr r5, r28
/* 801448E0  38 C0 00 80 */	li r6, 0x80
/* 801448E4  4B EF 7A 09 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 801448E8  7C 75 1B 78 */	mr r21, r3
/* 801448EC  38 60 00 18 */	li r3, 0x18
/* 801448F0  48 18 A3 5D */	bl __nw__FUl
/* 801448F4  7C 77 1B 79 */	or. r23, r3, r3
/* 801448F8  41 82 00 20 */	beq lbl_80144918
/* 801448FC  3C 80 80 3A */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 80144900  38 04 33 54 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 80144904  90 17 00 00 */	stw r0, 0(r23)
/* 80144908  38 80 00 00 */	li r4, 0
/* 8014490C  48 1E 3A F1 */	bl init__12J3DFrameCtrlFs
/* 80144910  38 00 00 00 */	li r0, 0
/* 80144914  90 17 00 14 */	stw r0, 0x14(r23)
lbl_80144918:
/* 80144918  92 FF 05 7C */	stw r23, 0x57c(r31)
/* 8014491C  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80144920  28 03 00 00 */	cmplwi r3, 0
/* 80144924  41 82 00 2C */	beq lbl_80144950
/* 80144928  38 9D 00 58 */	addi r4, r29, 0x58
/* 8014492C  7E A5 AB 78 */	mr r5, r21
/* 80144930  38 C0 00 01 */	li r6, 1
/* 80144934  38 E0 00 02 */	li r7, 2
/* 80144938  C0 22 99 A8 */	lfs f1, lit_3881(r2)
/* 8014493C  39 00 00 00 */	li r8, 0
/* 80144940  39 20 FF FF */	li r9, -1
/* 80144944  4B EC 8B 39 */	bl init__13mDoExt_bpkAnmFP16J3DMaterialTableP11J3DAnmColoriifss
/* 80144948  2C 03 00 00 */	cmpwi r3, 0
/* 8014494C  40 82 00 0C */	bne lbl_80144958
lbl_80144950:
/* 80144950  38 60 00 00 */	li r3, 0
/* 80144954  48 00 02 28 */	b lbl_80144B7C
lbl_80144958:
/* 80144958  38 00 00 00 */	li r0, 0
/* 8014495C  90 1F 05 84 */	stw r0, 0x584(r31)
/* 80144960  7F 20 07 35 */	extsh. r0, r25
/* 80144964  40 81 00 88 */	ble lbl_801449EC
/* 80144968  7F C3 F3 78 */	mr r3, r30
/* 8014496C  7F 24 07 34 */	extsh r4, r25
/* 80144970  7F 85 E3 78 */	mr r5, r28
/* 80144974  38 C0 00 80 */	li r6, 0x80
/* 80144978  4B EF 79 75 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8014497C  7C 75 1B 78 */	mr r21, r3
/* 80144980  38 60 00 1C */	li r3, 0x1c
/* 80144984  48 18 A2 C9 */	bl __nw__FUl
/* 80144988  7C 77 1B 79 */	or. r23, r3, r3
/* 8014498C  41 82 00 20 */	beq lbl_801449AC
/* 80144990  3C 80 80 3A */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 80144994  38 04 33 54 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 80144998  90 17 00 00 */	stw r0, 0(r23)
/* 8014499C  38 80 00 00 */	li r4, 0
/* 801449A0  48 1E 3A 5D */	bl init__12J3DFrameCtrlFs
/* 801449A4  38 00 00 00 */	li r0, 0
/* 801449A8  90 17 00 18 */	stw r0, 0x18(r23)
lbl_801449AC:
/* 801449AC  92 FF 05 84 */	stw r23, 0x584(r31)
/* 801449B0  80 7F 05 84 */	lwz r3, 0x584(r31)
/* 801449B4  28 03 00 00 */	cmplwi r3, 0
/* 801449B8  41 82 00 2C */	beq lbl_801449E4
/* 801449BC  7E A4 AB 78 */	mr r4, r21
/* 801449C0  38 A0 00 01 */	li r5, 1
/* 801449C4  38 C0 00 02 */	li r6, 2
/* 801449C8  C0 22 99 A8 */	lfs f1, lit_3881(r2)
/* 801449CC  38 E0 00 00 */	li r7, 0
/* 801449D0  39 00 FF FF */	li r8, -1
/* 801449D4  39 20 00 00 */	li r9, 0
/* 801449D8  4B EC 8E 05 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 801449DC  2C 03 00 00 */	cmpwi r3, 0
/* 801449E0  40 82 00 0C */	bne lbl_801449EC
lbl_801449E4:
/* 801449E4  38 60 00 00 */	li r3, 0
/* 801449E8  48 00 01 94 */	b lbl_80144B7C
lbl_801449EC:
/* 801449EC  38 00 00 00 */	li r0, 0
/* 801449F0  90 1F 05 80 */	stw r0, 0x580(r31)
/* 801449F4  7F 40 07 35 */	extsh. r0, r26
/* 801449F8  40 81 00 B0 */	ble lbl_80144AA8
/* 801449FC  7F C3 F3 78 */	mr r3, r30
/* 80144A00  7F 44 07 34 */	extsh r4, r26
/* 80144A04  7F 85 E3 78 */	mr r5, r28
/* 80144A08  38 C0 00 80 */	li r6, 0x80
/* 80144A0C  4B EF 78 E1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80144A10  7C 75 1B 78 */	mr r21, r3
/* 80144A14  7F E3 FB 78 */	mr r3, r31
/* 80144A18  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 80144A1C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80144A20  7D 89 03 A6 */	mtctr r12
/* 80144A24  4E 80 04 21 */	bctrl 
/* 80144A28  3A C0 00 01 */	li r22, 1
/* 80144A2C  7C 60 07 74 */	extsb r0, r3
/* 80144A30  2C 00 FF FF */	cmpwi r0, -1
/* 80144A34  41 82 00 08 */	beq lbl_80144A3C
/* 80144A38  3A C0 00 00 */	li r22, 0
lbl_80144A3C:
/* 80144A3C  38 60 00 18 */	li r3, 0x18
/* 80144A40  48 18 A2 0D */	bl __nw__FUl
/* 80144A44  7C 77 1B 79 */	or. r23, r3, r3
/* 80144A48  41 82 00 20 */	beq lbl_80144A68
/* 80144A4C  3C 80 80 3A */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 80144A50  38 04 33 54 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 80144A54  90 17 00 00 */	stw r0, 0(r23)
/* 80144A58  38 80 00 00 */	li r4, 0
/* 80144A5C  48 1E 39 A1 */	bl init__12J3DFrameCtrlFs
/* 80144A60  38 00 00 00 */	li r0, 0
/* 80144A64  90 17 00 14 */	stw r0, 0x14(r23)
lbl_80144A68:
/* 80144A68  92 FF 05 80 */	stw r23, 0x580(r31)
/* 80144A6C  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 80144A70  28 03 00 00 */	cmplwi r3, 0
/* 80144A74  41 82 00 2C */	beq lbl_80144AA0
/* 80144A78  38 9D 00 58 */	addi r4, r29, 0x58
/* 80144A7C  7E A5 AB 78 */	mr r5, r21
/* 80144A80  7E C6 B3 78 */	mr r6, r22
/* 80144A84  38 E0 00 02 */	li r7, 2
/* 80144A88  C0 22 99 A8 */	lfs f1, lit_3881(r2)
/* 80144A8C  39 00 00 00 */	li r8, 0
/* 80144A90  39 20 FF FF */	li r9, -1
/* 80144A94  4B EC 8C 79 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80144A98  2C 03 00 00 */	cmpwi r3, 0
/* 80144A9C  40 82 00 0C */	bne lbl_80144AA8
lbl_80144AA0:
/* 80144AA0  38 60 00 00 */	li r3, 0
/* 80144AA4  48 00 00 D8 */	b lbl_80144B7C
lbl_80144AA8:
/* 80144AA8  38 00 00 00 */	li r0, 0
/* 80144AAC  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80144AB0  7F 60 07 35 */	extsh. r0, r27
/* 80144AB4  40 81 00 88 */	ble lbl_80144B3C
/* 80144AB8  7F C3 F3 78 */	mr r3, r30
/* 80144ABC  7F 64 DB 78 */	mr r4, r27
/* 80144AC0  7F 85 E3 78 */	mr r5, r28
/* 80144AC4  38 C0 00 80 */	li r6, 0x80
/* 80144AC8  4B EF 78 25 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80144ACC  7C 75 1B 78 */	mr r21, r3
/* 80144AD0  38 60 00 18 */	li r3, 0x18
/* 80144AD4  48 18 A1 79 */	bl __nw__FUl
/* 80144AD8  7C 77 1B 79 */	or. r23, r3, r3
/* 80144ADC  41 82 00 20 */	beq lbl_80144AFC
/* 80144AE0  3C 80 80 3A */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 80144AE4  38 04 33 54 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 80144AE8  90 17 00 00 */	stw r0, 0(r23)
/* 80144AEC  38 80 00 00 */	li r4, 0
/* 80144AF0  48 1E 39 0D */	bl init__12J3DFrameCtrlFs
/* 80144AF4  38 00 00 00 */	li r0, 0
/* 80144AF8  90 17 00 14 */	stw r0, 0x14(r23)
lbl_80144AFC:
/* 80144AFC  92 FF 05 88 */	stw r23, 0x588(r31)
/* 80144B00  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80144B04  28 03 00 00 */	cmplwi r3, 0
/* 80144B08  41 82 00 2C */	beq lbl_80144B34
/* 80144B0C  38 9D 00 58 */	addi r4, r29, 0x58
/* 80144B10  7E A5 AB 78 */	mr r5, r21
/* 80144B14  38 C0 00 01 */	li r6, 1
/* 80144B18  38 E0 00 02 */	li r7, 2
/* 80144B1C  C0 22 99 A8 */	lfs f1, lit_3881(r2)
/* 80144B20  39 00 00 00 */	li r8, 0
/* 80144B24  39 20 FF FF */	li r9, -1
/* 80144B28  4B EC 8A 25 */	bl init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 80144B2C  2C 03 00 00 */	cmpwi r3, 0
/* 80144B30  40 82 00 0C */	bne lbl_80144B3C
lbl_80144B34:
/* 80144B34  38 60 00 00 */	li r3, 0
/* 80144B38  48 00 00 44 */	b lbl_80144B7C
lbl_80144B3C:
/* 80144B3C  7F E3 FB 78 */	mr r3, r31
/* 80144B40  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 80144B44  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80144B48  7D 89 03 A6 */	mtctr r12
/* 80144B4C  4E 80 04 21 */	bctrl 
/* 80144B50  2C 03 00 00 */	cmpwi r3, 0
/* 80144B54  40 82 00 0C */	bne lbl_80144B60
/* 80144B58  38 60 00 00 */	li r3, 0
/* 80144B5C  48 00 00 20 */	b lbl_80144B7C
lbl_80144B60:
/* 80144B60  7F E3 FB 78 */	mr r3, r31
/* 80144B64  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 80144B68  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80144B6C  7D 89 03 A6 */	mtctr r12
/* 80144B70  4E 80 04 21 */	bctrl 
/* 80144B74  30 03 FF FF */	addic r0, r3, -1
/* 80144B78  7C 60 19 10 */	subfe r3, r0, r3
lbl_80144B7C:
/* 80144B7C  39 61 00 40 */	addi r11, r1, 0x40
/* 80144B80  48 21 D6 89 */	bl _restgpr_21
/* 80144B84  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80144B88  7C 08 03 A6 */	mtlr r0
/* 80144B8C  38 21 00 40 */	addi r1, r1, 0x40
/* 80144B90  4E 80 00 20 */	blr 
