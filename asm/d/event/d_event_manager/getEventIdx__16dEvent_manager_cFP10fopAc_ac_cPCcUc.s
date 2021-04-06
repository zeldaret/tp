lbl_80047758:
/* 80047758  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8004775C  7C 08 02 A6 */	mflr r0
/* 80047760  90 01 00 64 */	stw r0, 0x64(r1)
/* 80047764  39 61 00 60 */	addi r11, r1, 0x60
/* 80047768  48 31 AA 59 */	bl _savegpr_22
/* 8004776C  7C 7A 1B 78 */	mr r26, r3
/* 80047770  7C 9B 23 78 */	mr r27, r4
/* 80047774  7C BC 2B 78 */	mr r28, r5
/* 80047778  7C D6 33 78 */	mr r22, r6
/* 8004777C  88 04 04 E2 */	lbz r0, 0x4e2(r4)
/* 80047780  7C 1F 07 74 */	extsb r31, r0
/* 80047784  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 80047788  28 00 00 FF */	cmplwi r0, 0xff
/* 8004778C  41 82 00 84 */	beq lbl_80047810
/* 80047790  7E C3 B3 78 */	mr r3, r22
/* 80047794  7F E4 FB 78 */	mr r4, r31
/* 80047798  4B FF BD 69 */	bl searchMapEventData__14dEvt_control_cFUcl
/* 8004779C  7C 65 1B 79 */	or. r5, r3, r3
/* 800477A0  41 82 00 70 */	beq lbl_80047810
/* 800477A4  88 05 00 00 */	lbz r0, 0(r5)
/* 800477A8  2C 00 00 00 */	cmpwi r0, 0
/* 800477AC  41 82 00 28 */	beq lbl_800477D4
/* 800477B0  41 80 00 60 */	blt lbl_80047810
/* 800477B4  2C 00 00 03 */	cmpwi r0, 3
/* 800477B8  40 80 00 58 */	bge lbl_80047810
/* 800477BC  7F 43 D3 78 */	mr r3, r26
/* 800477C0  7F 64 DB 78 */	mr r4, r27
/* 800477C4  38 A5 00 0D */	addi r5, r5, 0xd
/* 800477C8  38 C0 00 FF */	li r6, 0xff
/* 800477CC  4B FF FF 8D */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 800477D0  48 00 01 48 */	b lbl_80047918
lbl_800477D4:
/* 800477D4  3C 60 80 42 */	lis r3, map_tool_name_4511@ha /* 0x804246C8@ha */
/* 800477D8  38 63 46 C8 */	addi r3, r3, map_tool_name_4511@l /* 0x804246C8@l */
/* 800477DC  3C 80 80 38 */	lis r4, d_event_d_event_manager__stringBase0@ha /* 0x80379F60@ha */
/* 800477E0  38 84 9F 60 */	addi r4, r4, d_event_d_event_manager__stringBase0@l /* 0x80379F60@l */
/* 800477E4  38 84 01 4F */	addi r4, r4, 0x14f
/* 800477E8  56 C5 06 3E */	clrlwi r5, r22, 0x18
/* 800477EC  4C C6 31 82 */	crclr 6
/* 800477F0  48 31 EC ED */	bl sprintf
/* 800477F4  7F 43 D3 78 */	mr r3, r26
/* 800477F8  7F 64 DB 78 */	mr r4, r27
/* 800477FC  3C A0 80 42 */	lis r5, map_tool_name_4511@ha /* 0x804246C8@ha */
/* 80047800  38 A5 46 C8 */	addi r5, r5, map_tool_name_4511@l /* 0x804246C8@l */
/* 80047804  38 C0 00 FF */	li r6, 0xff
/* 80047808  4B FF FF 51 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 8004780C  48 00 01 0C */	b lbl_80047918
lbl_80047810:
/* 80047810  28 1C 00 00 */	cmplwi r28, 0
/* 80047814  40 82 00 0C */	bne lbl_80047820
/* 80047818  38 60 FF FF */	li r3, -1
/* 8004781C  48 00 00 FC */	b lbl_80047918
lbl_80047820:
/* 80047820  3B A0 00 0A */	li r29, 0xa
/* 80047824  3B 20 01 68 */	li r25, 0x168
/* 80047828  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8004782C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80047830  3F C3 00 02 */	addis r30, r3, 2
/* 80047834  3B DE C2 F8 */	addi r30, r30, -15624
lbl_80047838:
/* 80047838  7F 1A CA 14 */	add r24, r26, r25
/* 8004783C  7F 16 C3 78 */	mr r22, r24
/* 80047840  38 61 00 08 */	addi r3, r1, 8
/* 80047844  4B FF E8 F5 */	bl init__11dEvDtBase_cFv
/* 80047848  2C 1D 00 04 */	cmpwi r29, 4
/* 8004784C  41 80 00 18 */	blt lbl_80047864
/* 80047850  2C 1D 00 09 */	cmpwi r29, 9
/* 80047854  41 81 00 10 */	bgt lbl_80047864
/* 80047858  80 18 00 20 */	lwz r0, 0x20(r24)
/* 8004785C  7C 1F 00 00 */	cmpw r31, r0
/* 80047860  40 82 00 A4 */	bne lbl_80047904
lbl_80047864:
/* 80047864  28 1B 00 00 */	cmplwi r27, 0
/* 80047868  41 82 00 40 */	beq lbl_800478A8
/* 8004786C  2C 1D 00 02 */	cmpwi r29, 2
/* 80047870  40 82 00 38 */	bne lbl_800478A8
/* 80047874  80 7B 01 00 */	lwz r3, 0x100(r27)
/* 80047878  28 03 00 00 */	cmplwi r3, 0
/* 8004787C  41 82 00 2C */	beq lbl_800478A8
/* 80047880  3C 80 80 38 */	lis r4, data_80379F50@ha /* 0x80379F50@ha */
/* 80047884  38 84 9F 50 */	addi r4, r4, data_80379F50@l /* 0x80379F50@l */
/* 80047888  7F C5 F3 78 */	mr r5, r30
/* 8004788C  38 C0 00 80 */	li r6, 0x80
/* 80047890  4B FF 4A ED */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80047894  7C 64 1B 78 */	mr r4, r3
/* 80047898  38 61 00 08 */	addi r3, r1, 8
/* 8004789C  38 A0 FF FF */	li r5, -1
/* 800478A0  4B FF E8 CD */	bl init__11dEvDtBase_cFPci
/* 800478A4  3A C1 00 08 */	addi r22, r1, 8
lbl_800478A8:
/* 800478A8  80 16 00 00 */	lwz r0, 0(r22)
/* 800478AC  28 00 00 00 */	cmplwi r0, 0
/* 800478B0  41 82 00 54 */	beq lbl_80047904
/* 800478B4  3A E0 00 00 */	li r23, 0
/* 800478B8  3B 00 00 00 */	li r24, 0
/* 800478BC  48 00 00 38 */	b lbl_800478F4
lbl_800478C0:
/* 800478C0  80 16 00 04 */	lwz r0, 4(r22)
/* 800478C4  7C 80 C2 14 */	add r4, r0, r24
/* 800478C8  7F 83 E3 78 */	mr r3, r28
/* 800478CC  48 32 10 C9 */	bl strcmp
/* 800478D0  2C 03 00 00 */	cmpwi r3, 0
/* 800478D4  40 82 00 18 */	bne lbl_800478EC
/* 800478D8  7E E3 07 34 */	extsh r3, r23
/* 800478DC  57 A0 40 2E */	slwi r0, r29, 8
/* 800478E0  7C 60 03 78 */	or r0, r3, r0
/* 800478E4  7C 03 07 34 */	extsh r3, r0
/* 800478E8  48 00 00 30 */	b lbl_80047918
lbl_800478EC:
/* 800478EC  3A F7 00 01 */	addi r23, r23, 1
/* 800478F0  3B 18 00 B0 */	addi r24, r24, 0xb0
lbl_800478F4:
/* 800478F4  80 76 00 00 */	lwz r3, 0(r22)
/* 800478F8  80 03 00 04 */	lwz r0, 4(r3)
/* 800478FC  7C 17 00 00 */	cmpw r23, r0
/* 80047900  41 80 FF C0 */	blt lbl_800478C0
lbl_80047904:
/* 80047904  3B BD FF FF */	addi r29, r29, -1
/* 80047908  2C 1D 00 01 */	cmpwi r29, 1
/* 8004790C  3B 39 FF DC */	addi r25, r25, -36
/* 80047910  40 80 FF 28 */	bge lbl_80047838
/* 80047914  38 60 FF FF */	li r3, -1
lbl_80047918:
/* 80047918  39 61 00 60 */	addi r11, r1, 0x60
/* 8004791C  48 31 A8 F1 */	bl _restgpr_22
/* 80047920  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80047924  7C 08 03 A6 */	mtlr r0
/* 80047928  38 21 00 60 */	addi r1, r1, 0x60
/* 8004792C  4E 80 00 20 */	blr 
