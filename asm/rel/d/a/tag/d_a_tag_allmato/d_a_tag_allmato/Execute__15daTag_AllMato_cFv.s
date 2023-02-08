lbl_804876B8:
/* 804876B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804876BC  7C 08 02 A6 */	mflr r0
/* 804876C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 804876C4  39 61 00 40 */	addi r11, r1, 0x40
/* 804876C8  4B ED AB 0D */	bl _savegpr_27
/* 804876CC  7C 7B 1B 78 */	mr r27, r3
/* 804876D0  88 03 04 BA */	lbz r0, 0x4ba(r3)
/* 804876D4  7C 05 07 74 */	extsb r5, r0
/* 804876D8  3C 80 80 45 */	lis r4, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 804876DC  88 04 0D 64 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0@l(r4)  /* 0x80450D64@l */
/* 804876E0  7C 00 07 74 */	extsb r0, r0
/* 804876E4  7C 05 00 00 */	cmpw r5, r0
/* 804876E8  40 82 05 58 */	bne lbl_80487C40
/* 804876EC  48 00 07 E9 */	bl isDelete__15daTag_AllMato_cFv
/* 804876F0  2C 03 00 00 */	cmpwi r3, 0
/* 804876F4  41 82 00 14 */	beq lbl_80487708
/* 804876F8  7F 63 DB 78 */	mr r3, r27
/* 804876FC  4B B9 25 81 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80487700  38 60 00 01 */	li r3, 1
/* 80487704  48 00 05 40 */	b lbl_80487C44
lbl_80487708:
/* 80487708  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048770C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80487710  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80487714  28 00 00 00 */	cmplwi r0, 0
/* 80487718  41 82 02 84 */	beq lbl_8048799C
/* 8048771C  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80487720  28 00 00 01 */	cmplwi r0, 1
/* 80487724  41 82 04 C0 */	beq lbl_80487BE4
/* 80487728  28 00 00 02 */	cmplwi r0, 2
/* 8048772C  40 82 01 08 */	bne lbl_80487834
/* 80487730  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 80487734  A8 9B 1D 0C */	lha r4, 0x1d0c(r27)
/* 80487738  4B BC 03 41 */	bl endCheck__16dEvent_manager_cFs
/* 8048773C  2C 03 00 00 */	cmpwi r3, 0
/* 80487740  41 82 00 F4 */	beq lbl_80487834
/* 80487744  80 1B 1D 08 */	lwz r0, 0x1d08(r27)
/* 80487748  2C 00 00 03 */	cmpwi r0, 3
/* 8048774C  40 80 00 A4 */	bge lbl_804877F0
/* 80487750  2C 00 00 01 */	cmpwi r0, 1
/* 80487754  40 80 00 08 */	bge lbl_8048775C
/* 80487758  48 00 00 98 */	b lbl_804877F0
lbl_8048775C:
/* 8048775C  38 7B 05 88 */	addi r3, r27, 0x588
/* 80487760  4B CB DF A9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80487764  7C 7C 1B 78 */	mr r28, r3
/* 80487768  80 63 0A 34 */	lwz r3, 0xa34(r3)
/* 8048776C  3C 03 00 01 */	addis r0, r3, 1
/* 80487770  28 00 FF FF */	cmplwi r0, 0xffff
/* 80487774  41 82 00 50 */	beq lbl_804877C4
/* 80487778  38 60 00 4C */	li r3, 0x4c
/* 8048777C  4B CC 53 31 */	bl daNpcT_chkEvtBit__FUl
/* 80487780  2C 03 00 00 */	cmpwi r3, 0
/* 80487784  41 82 00 24 */	beq lbl_804877A8
/* 80487788  38 60 00 4B */	li r3, 0x4b
/* 8048778C  4B CC 53 21 */	bl daNpcT_chkEvtBit__FUl
/* 80487790  2C 03 00 00 */	cmpwi r3, 0
/* 80487794  41 82 00 0C */	beq lbl_804877A0
/* 80487798  3B A0 00 06 */	li r29, 6
/* 8048779C  48 00 00 10 */	b lbl_804877AC
lbl_804877A0:
/* 804877A0  3B A0 00 05 */	li r29, 5
/* 804877A4  48 00 00 08 */	b lbl_804877AC
lbl_804877A8:
/* 804877A8  3B A0 00 04 */	li r29, 4
lbl_804877AC:
/* 804877AC  88 1B 1D 0E */	lbz r0, 0x1d0e(r27)
/* 804877B0  28 00 00 00 */	cmplwi r0, 0
/* 804877B4  41 82 00 1C */	beq lbl_804877D0
/* 804877B8  38 60 00 09 */	li r3, 9
/* 804877BC  4B CC 53 31 */	bl daNpcT_onTmpBit__FUl
/* 804877C0  48 00 00 10 */	b lbl_804877D0
lbl_804877C4:
/* 804877C4  3B A0 00 07 */	li r29, 7
/* 804877C8  38 60 00 3F */	li r3, 0x3f
/* 804877CC  4B CC 53 21 */	bl daNpcT_onTmpBit__FUl
lbl_804877D0:
/* 804877D0  7F 63 DB 78 */	mr r3, r27
/* 804877D4  7F A4 EB 78 */	mr r4, r29
/* 804877D8  48 00 18 01 */	bl evtChange__15daTag_AllMato_cFUs
/* 804877DC  38 00 FF FF */	li r0, -1
/* 804877E0  90 1C 0A 34 */	stw r0, 0xa34(r28)
/* 804877E4  38 00 00 00 */	li r0, 0
/* 804877E8  90 1B 1D 08 */	stw r0, 0x1d08(r27)
/* 804877EC  48 00 03 F8 */	b lbl_80487BE4
lbl_804877F0:
/* 804877F0  88 1B 1D 0E */	lbz r0, 0x1d0e(r27)
/* 804877F4  28 00 00 00 */	cmplwi r0, 0
/* 804877F8  41 82 00 18 */	beq lbl_80487810
/* 804877FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80487800  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80487804  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80487808  64 00 00 20 */	oris r0, r0, 0x20
/* 8048780C  90 03 5F 18 */	stw r0, 0x5f18(r3)
lbl_80487810:
/* 80487810  4B CF 9E 31 */	bl dCam_getBody__Fv
/* 80487814  80 03 06 0C */	lwz r0, 0x60c(r3)
/* 80487818  64 00 40 00 */	oris r0, r0, 0x4000
/* 8048781C  90 03 06 0C */	stw r0, 0x60c(r3)
/* 80487820  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80487824  4B BB AC 45 */	bl reset__14dEvt_control_cFv
/* 80487828  38 00 FF FF */	li r0, -1
/* 8048782C  B0 1B 1D 0C */	sth r0, 0x1d0c(r27)
/* 80487830  48 00 03 B4 */	b lbl_80487BE4
lbl_80487834:
/* 80487834  3B FE 4F F8 */	addi r31, r30, 0x4ff8
/* 80487838  7F E3 FB 78 */	mr r3, r31
/* 8048783C  3C 80 80 49 */	lis r4, d_a_tag_allmato__stringBase0@ha /* 0x8048973C@ha */
/* 80487840  38 84 97 3C */	addi r4, r4, d_a_tag_allmato__stringBase0@l /* 0x8048973C@l */
/* 80487844  38 84 00 76 */	addi r4, r4, 0x76
/* 80487848  7F 65 DB 78 */	mr r5, r27
/* 8048784C  38 C0 FF FF */	li r6, -1
/* 80487850  4B BC 02 CD */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80487854  7C 7D 1B 78 */	mr r29, r3
/* 80487858  2C 1D FF FF */	cmpwi r29, -1
/* 8048785C  41 82 03 88 */	beq lbl_80487BE4
/* 80487860  38 A1 00 04 */	addi r5, r1, 4
/* 80487864  3C 60 80 49 */	lis r3, lit_4071@ha /* 0x804896E8@ha */
/* 80487868  38 63 96 E8 */	addi r3, r3, lit_4071@l /* 0x804896E8@l */
/* 8048786C  38 83 FF FC */	addi r4, r3, -4
/* 80487870  38 00 00 03 */	li r0, 3
/* 80487874  7C 09 03 A6 */	mtctr r0
lbl_80487878:
/* 80487878  80 64 00 04 */	lwz r3, 4(r4)
/* 8048787C  84 04 00 08 */	lwzu r0, 8(r4)
/* 80487880  90 65 00 04 */	stw r3, 4(r5)
/* 80487884  94 05 00 08 */	stwu r0, 8(r5)
/* 80487888  42 00 FF F0 */	bdnz lbl_80487878
/* 8048788C  80 04 00 04 */	lwz r0, 4(r4)
/* 80487890  90 05 00 04 */	stw r0, 4(r5)
/* 80487894  7F E3 FB 78 */	mr r3, r31
/* 80487898  7F A4 EB 78 */	mr r4, r29
/* 8048789C  4B BC 04 B1 */	bl getIsAddvance__16dEvent_manager_cFi
/* 804878A0  2C 03 00 00 */	cmpwi r3, 0
/* 804878A4  41 82 00 A0 */	beq lbl_80487944
/* 804878A8  38 7B 05 88 */	addi r3, r27, 0x588
/* 804878AC  4B CB DE 5D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 804878B0  38 7B 05 88 */	addi r3, r27, 0x588
/* 804878B4  4B CB DE 55 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 804878B8  7C 64 1B 78 */	mr r4, r3
/* 804878BC  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 804878C0  4B BB BD 9D */	bl setPt2__14dEvt_control_cFPv
/* 804878C4  80 1B 1D 08 */	lwz r0, 0x1d08(r27)
/* 804878C8  2C 00 00 00 */	cmpwi r0, 0
/* 804878CC  41 82 00 78 */	beq lbl_80487944
/* 804878D0  2C 00 00 03 */	cmpwi r0, 3
/* 804878D4  40 80 00 70 */	bge lbl_80487944
/* 804878D8  2C 00 00 01 */	cmpwi r0, 1
/* 804878DC  40 80 00 0C */	bge lbl_804878E8
/* 804878E0  48 00 00 64 */	b lbl_80487944
/* 804878E4  48 00 00 60 */	b lbl_80487944
lbl_804878E8:
/* 804878E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804878EC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804878F0  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 804878F4  7C 00 07 74 */	extsb r0, r0
/* 804878F8  1C 00 00 38 */	mulli r0, r0, 0x38
/* 804878FC  7C 64 02 14 */	add r3, r4, r0
/* 80487900  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 80487904  A8 03 00 FC */	lha r0, 0xfc(r3)
/* 80487908  C0 23 00 D0 */	lfs f1, 0xd0(r3)
/* 8048790C  C0 03 00 E4 */	lfs f0, 0xe4(r3)
/* 80487910  D0 04 5D 8C */	stfs f0, 0x5d8c(r4)
/* 80487914  C0 03 00 E8 */	lfs f0, 0xe8(r3)
/* 80487918  D0 04 5D 90 */	stfs f0, 0x5d90(r4)
/* 8048791C  C0 03 00 EC */	lfs f0, 0xec(r3)
/* 80487920  D0 04 5D 94 */	stfs f0, 0x5d94(r4)
/* 80487924  C0 03 00 D8 */	lfs f0, 0xd8(r3)
/* 80487928  D0 04 5D 98 */	stfs f0, 0x5d98(r4)
/* 8048792C  C0 03 00 DC */	lfs f0, 0xdc(r3)
/* 80487930  D0 04 5D 9C */	stfs f0, 0x5d9c(r4)
/* 80487934  C0 03 00 E0 */	lfs f0, 0xe0(r3)
/* 80487938  D0 04 5D A0 */	stfs f0, 0x5da0(r4)
/* 8048793C  D0 24 5D A4 */	stfs f1, 0x5da4(r4)
/* 80487940  B0 04 5D A8 */	sth r0, 0x5da8(r4)
lbl_80487944:
/* 80487944  7F E3 FB 78 */	mr r3, r31
/* 80487948  7F A4 EB 78 */	mr r4, r29
/* 8048794C  38 A1 00 08 */	addi r5, r1, 8
/* 80487950  38 C0 00 07 */	li r6, 7
/* 80487954  38 E0 00 00 */	li r7, 0
/* 80487958  39 00 00 00 */	li r8, 0
/* 8048795C  4B BC 04 B5 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80487960  2C 03 00 00 */	cmpwi r3, 0
/* 80487964  41 82 00 08 */	beq lbl_8048796C
/* 80487968  48 00 00 24 */	b lbl_8048798C
lbl_8048796C:
/* 8048796C  7F 63 DB 78 */	mr r3, r27
/* 80487970  48 00 10 25 */	bl checkCrsMato2__15daTag_AllMato_cFv
/* 80487974  2C 03 00 00 */	cmpwi r3, 0
/* 80487978  40 82 02 6C */	bne lbl_80487BE4
/* 8048797C  7F E3 FB 78 */	mr r3, r31
/* 80487980  7F A4 EB 78 */	mr r4, r29
/* 80487984  4B BC 07 F9 */	bl cutEnd__16dEvent_manager_cFi
/* 80487988  48 00 02 5C */	b lbl_80487BE4
lbl_8048798C:
/* 8048798C  7F E3 FB 78 */	mr r3, r31
/* 80487990  7F A4 EB 78 */	mr r4, r29
/* 80487994  4B BC 07 E9 */	bl cutEnd__16dEvent_manager_cFi
/* 80487998  48 00 02 4C */	b lbl_80487BE4
lbl_8048799C:
/* 8048799C  88 1B 1D 0F */	lbz r0, 0x1d0f(r27)
/* 804879A0  28 00 00 00 */	cmplwi r0, 0
/* 804879A4  40 82 00 1C */	bne lbl_804879C0
/* 804879A8  7F 63 DB 78 */	mr r3, r27
/* 804879AC  48 00 05 D5 */	bl entryBouMatoActors__15daTag_AllMato_cFv
/* 804879B0  7F 63 DB 78 */	mr r3, r27
/* 804879B4  48 00 06 81 */	bl entryItaMatoActors__15daTag_AllMato_cFv
/* 804879B8  38 00 00 01 */	li r0, 1
/* 804879BC  98 1B 1D 0F */	stb r0, 0x1d0f(r27)
lbl_804879C0:
/* 804879C0  7F 63 DB 78 */	mr r3, r27
/* 804879C4  48 00 08 75 */	bl checkCrsMato__15daTag_AllMato_cFv
/* 804879C8  90 7B 1D 08 */	stw r3, 0x1d08(r27)
/* 804879CC  3B 80 00 00 */	li r28, 0
/* 804879D0  80 1B 1D 08 */	lwz r0, 0x1d08(r27)
/* 804879D4  2C 00 00 00 */	cmpwi r0, 0
/* 804879D8  41 82 00 A0 */	beq lbl_80487A78
/* 804879DC  2C 00 00 03 */	cmpwi r0, 3
/* 804879E0  41 82 00 30 */	beq lbl_80487A10
/* 804879E4  40 80 00 FC */	bge lbl_80487AE0
/* 804879E8  2C 00 00 01 */	cmpwi r0, 1
/* 804879EC  40 80 00 08 */	bge lbl_804879F4
/* 804879F0  48 00 00 F0 */	b lbl_80487AE0
lbl_804879F4:
/* 804879F4  88 1B 1D 10 */	lbz r0, 0x1d10(r27)
/* 804879F8  28 00 00 00 */	cmplwi r0, 0
/* 804879FC  40 82 00 E4 */	bne lbl_80487AE0
/* 80487A00  4B CF 9C 41 */	bl dCam_getBody__Fv
/* 80487A04  4B CE D4 A9 */	bl SaveZoomRatio__9dCamera_cFv
/* 80487A08  3B 80 00 01 */	li r28, 1
/* 80487A0C  48 00 00 D4 */	b lbl_80487AE0
lbl_80487A10:
/* 80487A10  38 7B 05 88 */	addi r3, r27, 0x588
/* 80487A14  4B CB DC F5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80487A18  7C 7D 1B 78 */	mr r29, r3
/* 80487A1C  88 1B 1D 10 */	lbz r0, 0x1d10(r27)
/* 80487A20  28 00 00 00 */	cmplwi r0, 0
/* 80487A24  40 82 00 48 */	bne lbl_80487A6C
/* 80487A28  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80487A2C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80487A30  28 03 00 FF */	cmplwi r3, 0xff
/* 80487A34  38 00 FF FF */	li r0, -1
/* 80487A38  41 82 00 08 */	beq lbl_80487A40
/* 80487A3C  7C 60 1B 78 */	mr r0, r3
lbl_80487A40:
/* 80487A40  2C 00 00 02 */	cmpwi r0, 2
/* 80487A44  41 82 00 24 */	beq lbl_80487A68
/* 80487A48  40 80 00 24 */	bge lbl_80487A6C
/* 80487A4C  2C 00 00 01 */	cmpwi r0, 1
/* 80487A50  40 80 00 08 */	bge lbl_80487A58
/* 80487A54  48 00 00 18 */	b lbl_80487A6C
lbl_80487A58:
/* 80487A58  3B 80 00 02 */	li r28, 2
/* 80487A5C  38 60 00 41 */	li r3, 0x41
/* 80487A60  4B CC 50 8D */	bl daNpcT_onTmpBit__FUl
/* 80487A64  48 00 00 08 */	b lbl_80487A6C
lbl_80487A68:
/* 80487A68  3B 80 00 03 */	li r28, 3
lbl_80487A6C:
/* 80487A6C  38 00 00 01 */	li r0, 1
/* 80487A70  98 1D 0A 19 */	stb r0, 0xa19(r29)
/* 80487A74  48 00 00 6C */	b lbl_80487AE0
lbl_80487A78:
/* 80487A78  7F 63 DB 78 */	mr r3, r27
/* 80487A7C  48 00 14 C5 */	bl checkBrkMato__15daTag_AllMato_cFv
/* 80487A80  90 7B 1D 08 */	stw r3, 0x1d08(r27)
/* 80487A84  80 1B 1D 08 */	lwz r0, 0x1d08(r27)
/* 80487A88  2C 00 00 00 */	cmpwi r0, 0
/* 80487A8C  41 82 00 54 */	beq lbl_80487AE0
/* 80487A90  2C 00 00 04 */	cmpwi r0, 4
/* 80487A94  41 82 00 08 */	beq lbl_80487A9C
/* 80487A98  48 00 00 48 */	b lbl_80487AE0
lbl_80487A9C:
/* 80487A9C  38 7B 05 88 */	addi r3, r27, 0x588
/* 80487AA0  4B CB DC 69 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80487AA4  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80487AA8  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80487AAC  28 03 00 FF */	cmplwi r3, 0xff
/* 80487AB0  38 00 FF FF */	li r0, -1
/* 80487AB4  41 82 00 08 */	beq lbl_80487ABC
/* 80487AB8  7C 60 1B 78 */	mr r0, r3
lbl_80487ABC:
/* 80487ABC  2C 00 00 02 */	cmpwi r0, 2
/* 80487AC0  41 82 00 1C */	beq lbl_80487ADC
/* 80487AC4  40 80 00 1C */	bge lbl_80487AE0
/* 80487AC8  2C 00 00 01 */	cmpwi r0, 1
/* 80487ACC  40 80 00 08 */	bge lbl_80487AD4
/* 80487AD0  48 00 00 10 */	b lbl_80487AE0
lbl_80487AD4:
/* 80487AD4  3B 80 00 02 */	li r28, 2
/* 80487AD8  48 00 00 08 */	b lbl_80487AE0
lbl_80487ADC:
/* 80487ADC  3B 80 00 03 */	li r28, 3
lbl_80487AE0:
/* 80487AE0  38 00 FF FF */	li r0, -1
/* 80487AE4  B0 1B 1D 0C */	sth r0, 0x1d0c(r27)
/* 80487AE8  7F 63 DB 78 */	mr r3, r27
/* 80487AEC  48 00 06 19 */	bl getTaroActorP__15daTag_AllMato_cFv
/* 80487AF0  28 03 00 00 */	cmplwi r3, 0
/* 80487AF4  41 82 00 F0 */	beq lbl_80487BE4
/* 80487AF8  57 9D 1B 78 */	rlwinm r29, r28, 3, 0xd, 0x1c
/* 80487AFC  3C 60 80 49 */	lis r3, l_evtList@ha /* 0x804897BC@ha */
/* 80487B00  3B E3 97 BC */	addi r31, r3, l_evtList@l /* 0x804897BC@l */
/* 80487B04  7C 7F E8 2E */	lwzx r3, r31, r29
/* 80487B08  4B EE 10 DD */	bl strlen
/* 80487B0C  28 03 00 00 */	cmplwi r3, 0
/* 80487B10  41 82 00 D4 */	beq lbl_80487BE4
/* 80487B14  38 60 00 4C */	li r3, 0x4c
/* 80487B18  4B CC 4F 95 */	bl daNpcT_chkEvtBit__FUl
/* 80487B1C  2C 03 00 00 */	cmpwi r3, 0
/* 80487B20  41 82 00 20 */	beq lbl_80487B40
/* 80487B24  38 60 00 4B */	li r3, 0x4b
/* 80487B28  4B CC 4F 85 */	bl daNpcT_chkEvtBit__FUl
/* 80487B2C  2C 03 00 00 */	cmpwi r3, 0
/* 80487B30  41 82 00 10 */	beq lbl_80487B40
/* 80487B34  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 80487B38  28 00 00 01 */	cmplwi r0, 1
/* 80487B3C  40 82 00 A8 */	bne lbl_80487BE4
lbl_80487B40:
/* 80487B40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80487B44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80487B48  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80487B4C  54 00 5F FE */	rlwinm r0, r0, 0xb, 0x1f, 0x1f
/* 80487B50  98 1B 1D 0E */	stb r0, 0x1d0e(r27)
/* 80487B54  38 60 00 40 */	li r3, 0x40
/* 80487B58  4B CC 4F D5 */	bl daNpcT_offTmpBit__FUl
/* 80487B5C  3C 60 80 49 */	lis r3, l_evtList@ha /* 0x804897BC@ha */
/* 80487B60  38 03 97 BC */	addi r0, r3, l_evtList@l /* 0x804897BC@l */
/* 80487B64  7F 80 EA 14 */	add r28, r0, r29
/* 80487B68  84 1C 00 04 */	lwzu r0, 4(r28)
/* 80487B6C  54 00 10 3A */	slwi r0, r0, 2
/* 80487B70  3C 60 80 49 */	lis r3, l_resNameList@ha /* 0x804897FC@ha */
/* 80487B74  38 63 97 FC */	addi r3, r3, l_resNameList@l /* 0x804897FC@l */
/* 80487B78  7C 63 00 2E */	lwzx r3, r3, r0
/* 80487B7C  4B EE 10 69 */	bl strlen
/* 80487B80  28 03 00 00 */	cmplwi r3, 0
/* 80487B84  41 82 00 28 */	beq lbl_80487BAC
/* 80487B88  80 1C 00 00 */	lwz r0, 0(r28)
/* 80487B8C  54 00 10 3A */	slwi r0, r0, 2
/* 80487B90  3C 60 80 49 */	lis r3, l_resNameList@ha /* 0x804897FC@ha */
/* 80487B94  38 63 97 FC */	addi r3, r3, l_resNameList@l /* 0x804897FC@l */
/* 80487B98  7C 03 00 2E */	lwzx r0, r3, r0
/* 80487B9C  90 1B 01 00 */	stw r0, 0x100(r27)
/* 80487BA0  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 80487BA4  80 9B 01 00 */	lwz r4, 0x100(r27)
/* 80487BA8  4B BB EC 59 */	bl setObjectArchive__16dEvent_manager_cFPc
lbl_80487BAC:
/* 80487BAC  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 80487BB0  7F 64 DB 78 */	mr r4, r27
/* 80487BB4  7C BF E8 2E */	lwzx r5, r31, r29
/* 80487BB8  38 C0 00 FF */	li r6, 0xff
/* 80487BBC  4B BB FB 9D */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80487BC0  B0 7B 1D 0C */	sth r3, 0x1d0c(r27)
/* 80487BC4  7F 63 DB 78 */	mr r3, r27
/* 80487BC8  A8 9B 1D 0C */	lha r4, 0x1d0c(r27)
/* 80487BCC  38 A0 00 FF */	li r5, 0xff
/* 80487BD0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80487BD4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80487BD8  38 E0 00 28 */	li r7, 0x28
/* 80487BDC  39 00 00 01 */	li r8, 1
/* 80487BE0  4B B9 3A 9D */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_80487BE4:
/* 80487BE4  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80487BE8  D0 1B 05 50 */	stfs f0, 0x550(r27)
/* 80487BEC  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80487BF0  D0 1B 05 54 */	stfs f0, 0x554(r27)
/* 80487BF4  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80487BF8  D0 1B 05 58 */	stfs f0, 0x558(r27)
/* 80487BFC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80487C00  D0 1B 05 38 */	stfs f0, 0x538(r27)
/* 80487C04  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80487C08  D0 1B 05 3C */	stfs f0, 0x53c(r27)
/* 80487C0C  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80487C10  D0 1B 05 40 */	stfs f0, 0x540(r27)
/* 80487C14  A8 1B 1D 0C */	lha r0, 0x1d0c(r27)
/* 80487C18  2C 00 00 00 */	cmpwi r0, 0
/* 80487C1C  40 80 00 1C */	bge lbl_80487C38
/* 80487C20  38 60 00 09 */	li r3, 9
/* 80487C24  4B CC 4F 09 */	bl daNpcT_offTmpBit__FUl
/* 80487C28  38 60 00 3F */	li r3, 0x3f
/* 80487C2C  4B CC 4F 01 */	bl daNpcT_offTmpBit__FUl
/* 80487C30  38 60 00 41 */	li r3, 0x41
/* 80487C34  4B CC 4E F9 */	bl daNpcT_offTmpBit__FUl
lbl_80487C38:
/* 80487C38  38 60 00 01 */	li r3, 1
/* 80487C3C  48 00 00 08 */	b lbl_80487C44
lbl_80487C40:
/* 80487C40  38 60 00 00 */	li r3, 0
lbl_80487C44:
/* 80487C44  39 61 00 40 */	addi r11, r1, 0x40
/* 80487C48  4B ED A5 D9 */	bl _restgpr_27
/* 80487C4C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80487C50  7C 08 03 A6 */	mtlr r0
/* 80487C54  38 21 00 40 */	addi r1, r1, 0x40
/* 80487C58  4E 80 00 20 */	blr 
