lbl_807081B8:
/* 807081B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807081BC  7C 08 02 A6 */	mflr r0
/* 807081C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 807081C4  39 61 00 30 */	addi r11, r1, 0x30
/* 807081C8  4B C5 A0 11 */	bl _savegpr_28
/* 807081CC  7C 7F 1B 78 */	mr r31, r3
/* 807081D0  38 60 00 58 */	li r3, 0x58
/* 807081D4  4B BC 6A 79 */	bl __nw__FUl
/* 807081D8  7C 7E 1B 79 */	or. r30, r3, r3
/* 807081DC  41 82 00 94 */	beq lbl_80708270
/* 807081E0  3C 60 80 71 */	lis r3, d_a_e_mb__stringBase0@ha /* 0x80708AE8@ha */
/* 807081E4  38 63 8A E8 */	addi r3, r3, d_a_e_mb__stringBase0@l /* 0x80708AE8@l */
/* 807081E8  38 80 00 0A */	li r4, 0xa
/* 807081EC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807081F0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807081F4  3F 85 00 02 */	addis r28, r5, 2
/* 807081F8  3B 9C C2 F8 */	addi r28, r28, -15624
/* 807081FC  7F 85 E3 78 */	mr r5, r28
/* 80708200  38 C0 00 80 */	li r6, 0x80
/* 80708204  4B 93 40 E9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80708208  7C 7D 1B 78 */	mr r29, r3
/* 8070820C  3C 60 80 71 */	lis r3, d_a_e_mb__stringBase0@ha /* 0x80708AE8@ha */
/* 80708210  38 63 8A E8 */	addi r3, r3, d_a_e_mb__stringBase0@l /* 0x80708AE8@l */
/* 80708214  38 80 00 19 */	li r4, 0x19
/* 80708218  7F 85 E3 78 */	mr r5, r28
/* 8070821C  38 C0 00 80 */	li r6, 0x80
/* 80708220  4B 93 40 CD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80708224  7C 64 1B 78 */	mr r4, r3
/* 80708228  38 1F 05 E8 */	addi r0, r31, 0x5e8
/* 8070822C  90 01 00 08 */	stw r0, 8(r1)
/* 80708230  3C 00 00 08 */	lis r0, 8
/* 80708234  90 01 00 0C */	stw r0, 0xc(r1)
/* 80708238  3C 60 11 02 */	lis r3, 0x1102 /* 0x11020084@ha */
/* 8070823C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11020084@l */
/* 80708240  90 01 00 10 */	stw r0, 0x10(r1)
/* 80708244  7F C3 F3 78 */	mr r3, r30
/* 80708248  38 A0 00 00 */	li r5, 0
/* 8070824C  38 C0 00 00 */	li r6, 0
/* 80708250  7F A7 EB 78 */	mr r7, r29
/* 80708254  39 00 00 00 */	li r8, 0
/* 80708258  3D 20 80 71 */	lis r9, lit_3764@ha /* 0x80708A10@ha */
/* 8070825C  C0 29 8A 10 */	lfs f1, lit_3764@l(r9)  /* 0x80708A10@l */
/* 80708260  39 20 00 00 */	li r9, 0
/* 80708264  39 40 FF FF */	li r10, -1
/* 80708268  4B 90 85 69 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8070826C  7C 7E 1B 78 */	mr r30, r3
lbl_80708270:
/* 80708270  93 DF 05 C8 */	stw r30, 0x5c8(r31)
/* 80708274  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 80708278  28 03 00 00 */	cmplwi r3, 0
/* 8070827C  41 82 00 10 */	beq lbl_8070828C
/* 80708280  80 03 00 04 */	lwz r0, 4(r3)
/* 80708284  28 00 00 00 */	cmplwi r0, 0
/* 80708288  40 82 00 0C */	bne lbl_80708294
lbl_8070828C:
/* 8070828C  38 60 00 00 */	li r3, 0
/* 80708290  48 00 02 94 */	b lbl_80708524
lbl_80708294:
/* 80708294  38 60 00 18 */	li r3, 0x18
/* 80708298  4B BC 69 B5 */	bl __nw__FUl
/* 8070829C  7C 7E 1B 79 */	or. r30, r3, r3
/* 807082A0  41 82 00 20 */	beq lbl_807082C0
/* 807082A4  3C 80 80 71 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80708BCC@ha */
/* 807082A8  38 04 8B CC */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80708BCC@l */
/* 807082AC  90 1E 00 00 */	stw r0, 0(r30)
/* 807082B0  38 80 00 00 */	li r4, 0
/* 807082B4  4B C2 01 49 */	bl init__12J3DFrameCtrlFs
/* 807082B8  38 00 00 00 */	li r0, 0
/* 807082BC  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_807082C0:
/* 807082C0  93 DF 05 D0 */	stw r30, 0x5d0(r31)
/* 807082C4  80 1F 05 D0 */	lwz r0, 0x5d0(r31)
/* 807082C8  28 00 00 00 */	cmplwi r0, 0
/* 807082CC  40 82 00 0C */	bne lbl_807082D8
/* 807082D0  38 60 00 05 */	li r3, 5
/* 807082D4  48 00 02 50 */	b lbl_80708524
lbl_807082D8:
/* 807082D8  3C 60 80 71 */	lis r3, d_a_e_mb__stringBase0@ha /* 0x80708AE8@ha */
/* 807082DC  38 63 8A E8 */	addi r3, r3, d_a_e_mb__stringBase0@l /* 0x80708AE8@l */
/* 807082E0  38 80 00 1E */	li r4, 0x1e
/* 807082E4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807082E8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807082EC  3F C5 00 02 */	addis r30, r5, 2
/* 807082F0  3B DE C2 F8 */	addi r30, r30, -15624
/* 807082F4  7F C5 F3 78 */	mr r5, r30
/* 807082F8  38 C0 00 80 */	li r6, 0x80
/* 807082FC  4B 93 3F F1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80708300  7C 65 1B 78 */	mr r5, r3
/* 80708304  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 80708308  80 63 00 04 */	lwz r3, 4(r3)
/* 8070830C  80 83 00 04 */	lwz r4, 4(r3)
/* 80708310  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80708314  38 84 00 58 */	addi r4, r4, 0x58
/* 80708318  38 C0 00 01 */	li r6, 1
/* 8070831C  38 E0 00 00 */	li r7, 0
/* 80708320  3D 00 80 71 */	lis r8, lit_3764@ha /* 0x80708A10@ha */
/* 80708324  C0 28 8A 10 */	lfs f1, lit_3764@l(r8)  /* 0x80708A10@l */
/* 80708328  39 00 00 00 */	li r8, 0
/* 8070832C  39 20 FF FF */	li r9, -1
/* 80708330  4B 90 52 1D */	bl init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 80708334  2C 03 00 00 */	cmpwi r3, 0
/* 80708338  40 82 00 0C */	bne lbl_80708344
/* 8070833C  38 60 00 05 */	li r3, 5
/* 80708340  48 00 01 E4 */	b lbl_80708524
lbl_80708344:
/* 80708344  38 60 00 54 */	li r3, 0x54
/* 80708348  4B BC 69 05 */	bl __nw__FUl
/* 8070834C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80708350  41 82 00 8C */	beq lbl_807083DC
/* 80708354  3C 60 80 71 */	lis r3, d_a_e_mb__stringBase0@ha /* 0x80708AE8@ha */
/* 80708358  38 63 8A E8 */	addi r3, r3, d_a_e_mb__stringBase0@l /* 0x80708AE8@l */
/* 8070835C  38 80 00 15 */	li r4, 0x15
/* 80708360  7F C5 F3 78 */	mr r5, r30
/* 80708364  38 C0 00 80 */	li r6, 0x80
/* 80708368  4B 93 3F 85 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8070836C  7C 7C 1B 78 */	mr r28, r3
/* 80708370  3C 60 80 71 */	lis r3, d_a_e_mb__stringBase0@ha /* 0x80708AE8@ha */
/* 80708374  38 63 8A E8 */	addi r3, r3, d_a_e_mb__stringBase0@l /* 0x80708AE8@l */
/* 80708378  38 80 00 1B */	li r4, 0x1b
/* 8070837C  7F C5 F3 78 */	mr r5, r30
/* 80708380  38 C0 00 80 */	li r6, 0x80
/* 80708384  4B 93 3F 69 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80708388  7C 64 1B 78 */	mr r4, r3
/* 8070838C  38 00 00 00 */	li r0, 0
/* 80708390  90 01 00 08 */	stw r0, 8(r1)
/* 80708394  38 1F 05 E8 */	addi r0, r31, 0x5e8
/* 80708398  90 01 00 0C */	stw r0, 0xc(r1)
/* 8070839C  3C 00 00 08 */	lis r0, 8
/* 807083A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 807083A4  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 807083A8  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 807083AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807083B0  7F A3 EB 78 */	mr r3, r29
/* 807083B4  38 A0 00 00 */	li r5, 0
/* 807083B8  38 C0 00 00 */	li r6, 0
/* 807083BC  7F 87 E3 78 */	mr r7, r28
/* 807083C0  39 00 00 00 */	li r8, 0
/* 807083C4  3D 20 80 71 */	lis r9, lit_3764@ha /* 0x80708A10@ha */
/* 807083C8  C0 29 8A 10 */	lfs f1, lit_3764@l(r9)  /* 0x80708A10@l */
/* 807083CC  39 20 00 00 */	li r9, 0
/* 807083D0  39 40 00 01 */	li r10, 1
/* 807083D4  4B 90 78 79 */	bl __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 807083D8  7C 7D 1B 78 */	mr r29, r3
lbl_807083DC:
/* 807083DC  93 BF 06 90 */	stw r29, 0x690(r31)
/* 807083E0  80 7F 06 90 */	lwz r3, 0x690(r31)
/* 807083E4  28 03 00 00 */	cmplwi r3, 0
/* 807083E8  41 82 00 10 */	beq lbl_807083F8
/* 807083EC  80 03 00 04 */	lwz r0, 4(r3)
/* 807083F0  28 00 00 00 */	cmplwi r0, 0
/* 807083F4  40 82 00 0C */	bne lbl_80708400
lbl_807083F8:
/* 807083F8  38 60 00 00 */	li r3, 0
/* 807083FC  48 00 01 28 */	b lbl_80708524
lbl_80708400:
/* 80708400  38 60 00 54 */	li r3, 0x54
/* 80708404  4B BC 68 49 */	bl __nw__FUl
/* 80708408  7C 7C 1B 79 */	or. r28, r3, r3
/* 8070840C  41 82 00 8C */	beq lbl_80708498
/* 80708410  3C 60 80 71 */	lis r3, d_a_e_mb__stringBase0@ha /* 0x80708AE8@ha */
/* 80708414  38 63 8A E8 */	addi r3, r3, d_a_e_mb__stringBase0@l /* 0x80708AE8@l */
/* 80708418  38 80 00 14 */	li r4, 0x14
/* 8070841C  7F C5 F3 78 */	mr r5, r30
/* 80708420  38 C0 00 80 */	li r6, 0x80
/* 80708424  4B 93 3E C9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80708428  7C 7D 1B 78 */	mr r29, r3
/* 8070842C  3C 60 80 71 */	lis r3, d_a_e_mb__stringBase0@ha /* 0x80708AE8@ha */
/* 80708430  38 63 8A E8 */	addi r3, r3, d_a_e_mb__stringBase0@l /* 0x80708AE8@l */
/* 80708434  38 80 00 1A */	li r4, 0x1a
/* 80708438  7F C5 F3 78 */	mr r5, r30
/* 8070843C  38 C0 00 80 */	li r6, 0x80
/* 80708440  4B 93 3E AD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80708444  7C 64 1B 78 */	mr r4, r3
/* 80708448  38 00 00 00 */	li r0, 0
/* 8070844C  90 01 00 08 */	stw r0, 8(r1)
/* 80708450  38 1F 05 E8 */	addi r0, r31, 0x5e8
/* 80708454  90 01 00 0C */	stw r0, 0xc(r1)
/* 80708458  3C 00 00 08 */	lis r0, 8
/* 8070845C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80708460  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80708464  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80708468  90 01 00 14 */	stw r0, 0x14(r1)
/* 8070846C  7F 83 E3 78 */	mr r3, r28
/* 80708470  38 A0 00 00 */	li r5, 0
/* 80708474  38 C0 00 00 */	li r6, 0
/* 80708478  7F A7 EB 78 */	mr r7, r29
/* 8070847C  39 00 00 00 */	li r8, 0
/* 80708480  3D 20 80 71 */	lis r9, lit_3764@ha /* 0x80708A10@ha */
/* 80708484  C0 29 8A 10 */	lfs f1, lit_3764@l(r9)  /* 0x80708A10@l */
/* 80708488  39 20 00 00 */	li r9, 0
/* 8070848C  39 40 00 01 */	li r10, 1
/* 80708490  4B 90 77 BD */	bl __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 80708494  7C 7C 1B 78 */	mr r28, r3
lbl_80708498:
/* 80708498  93 9F 06 94 */	stw r28, 0x694(r31)
/* 8070849C  80 7F 06 94 */	lwz r3, 0x694(r31)
/* 807084A0  28 03 00 00 */	cmplwi r3, 0
/* 807084A4  41 82 00 10 */	beq lbl_807084B4
/* 807084A8  80 03 00 04 */	lwz r0, 4(r3)
/* 807084AC  28 00 00 00 */	cmplwi r0, 0
/* 807084B0  40 82 00 0C */	bne lbl_807084BC
lbl_807084B4:
/* 807084B4  38 60 00 00 */	li r3, 0
/* 807084B8  48 00 00 6C */	b lbl_80708524
lbl_807084BC:
/* 807084BC  3C 60 80 71 */	lis r3, d_a_e_mb__stringBase0@ha /* 0x80708AE8@ha */
/* 807084C0  38 63 8A E8 */	addi r3, r3, d_a_e_mb__stringBase0@l /* 0x80708AE8@l */
/* 807084C4  38 80 00 21 */	li r4, 0x21
/* 807084C8  7F C5 F3 78 */	mr r5, r30
/* 807084CC  38 C0 00 80 */	li r6, 0x80
/* 807084D0  4B 93 3E 1D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807084D4  7C 66 1B 78 */	mr r6, r3
/* 807084D8  38 7F 06 B4 */	addi r3, r31, 0x6b4
/* 807084DC  38 80 00 01 */	li r4, 1
/* 807084E0  38 A0 00 10 */	li r5, 0x10
/* 807084E4  38 E0 00 01 */	li r7, 1
/* 807084E8  4B 90 AE 79 */	bl init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 807084EC  2C 03 00 00 */	cmpwi r3, 0
/* 807084F0  40 82 00 0C */	bne lbl_807084FC
/* 807084F4  38 60 00 00 */	li r3, 0
/* 807084F8  48 00 00 2C */	b lbl_80708524
lbl_807084FC:
/* 807084FC  80 7F 06 EC */	lwz r3, 0x6ec(r31)
/* 80708500  80 83 00 04 */	lwz r4, 4(r3)
/* 80708504  3C 60 80 71 */	lis r3, lit_4604@ha /* 0x80708A90@ha */
/* 80708508  C0 03 8A 90 */	lfs f0, lit_4604@l(r3)  /* 0x80708A90@l */
/* 8070850C  38 00 00 10 */	li r0, 0x10
/* 80708510  7C 09 03 A6 */	mtctr r0
lbl_80708514:
/* 80708514  D0 04 00 00 */	stfs f0, 0(r4)
/* 80708518  38 84 00 04 */	addi r4, r4, 4
/* 8070851C  42 00 FF F8 */	bdnz lbl_80708514
/* 80708520  38 60 00 01 */	li r3, 1
lbl_80708524:
/* 80708524  39 61 00 30 */	addi r11, r1, 0x30
/* 80708528  4B C5 9C FD */	bl _restgpr_28
/* 8070852C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80708530  7C 08 03 A6 */	mtlr r0
/* 80708534  38 21 00 30 */	addi r1, r1, 0x30
/* 80708538  4E 80 00 20 */	blr 
