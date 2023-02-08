lbl_804DA740:
/* 804DA740  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804DA744  7C 08 02 A6 */	mflr r0
/* 804DA748  90 01 00 34 */	stw r0, 0x34(r1)
/* 804DA74C  39 61 00 30 */	addi r11, r1, 0x30
/* 804DA750  4B E8 7A 81 */	bl _savegpr_26
/* 804DA754  7C 7D 1B 78 */	mr r29, r3
/* 804DA758  3C 80 80 4E */	lis r4, lit_3766@ha /* 0x804DD5DC@ha */
/* 804DA75C  3B E4 D5 DC */	addi r31, r4, lit_3766@l /* 0x804DD5DC@l */
/* 804DA760  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804DA764  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804DA768  40 82 00 B8 */	bne lbl_804DA820
/* 804DA76C  7F A0 EB 79 */	or. r0, r29, r29
/* 804DA770  41 82 00 A4 */	beq lbl_804DA814
/* 804DA774  7C 1E 03 78 */	mr r30, r0
/* 804DA778  4B B3 E3 ED */	bl __ct__10fopAc_ac_cFv
/* 804DA77C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 804DA780  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 804DA784  90 1E 05 94 */	stw r0, 0x594(r30)
/* 804DA788  38 7E 05 98 */	addi r3, r30, 0x598
/* 804DA78C  4B BA 8F D5 */	bl __ct__10dCcD_GSttsFv
/* 804DA790  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 804DA794  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 804DA798  90 7E 05 94 */	stw r3, 0x594(r30)
/* 804DA79C  38 03 00 20 */	addi r0, r3, 0x20
/* 804DA7A0  90 1E 05 98 */	stw r0, 0x598(r30)
/* 804DA7A4  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 804DA7A8  3C 80 80 07 */	lis r4, __ct__12dBgS_AcchCirFv@ha /* 0x80075EAC@ha */
/* 804DA7AC  38 84 5E AC */	addi r4, r4, __ct__12dBgS_AcchCirFv@l /* 0x80075EAC@l */
/* 804DA7B0  3C A0 80 4E */	lis r5, __dt__12dBgS_AcchCirFv@ha /* 0x804DADBC@ha */
/* 804DA7B4  38 A5 AD BC */	addi r5, r5, __dt__12dBgS_AcchCirFv@l /* 0x804DADBC@l */
/* 804DA7B8  38 C0 00 40 */	li r6, 0x40
/* 804DA7BC  38 E0 00 09 */	li r7, 9
/* 804DA7C0  4B E8 75 A1 */	bl __construct_array
/* 804DA7C4  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 804DA7C8  3C 80 80 4E */	lis r4, __ct__13dBgS_LinkAcchFv@ha /* 0x804DAD68@ha */
/* 804DA7CC  38 84 AD 68 */	addi r4, r4, __ct__13dBgS_LinkAcchFv@l /* 0x804DAD68@l */
/* 804DA7D0  3C A0 80 4E */	lis r5, __dt__13dBgS_LinkAcchFv@ha /* 0x804DACF8@ha */
/* 804DA7D4  38 A5 AC F8 */	addi r5, r5, __dt__13dBgS_LinkAcchFv@l /* 0x804DACF8@l */
/* 804DA7D8  38 C0 01 D8 */	li r6, 0x1d8
/* 804DA7DC  38 E0 00 03 */	li r7, 3
/* 804DA7E0  4B E8 75 81 */	bl __construct_array
/* 804DA7E4  38 7E 0D 80 */	addi r3, r30, 0xd80
/* 804DA7E8  3C 80 80 4E */	lis r4, __ct__8dCcD_CylFv@ha /* 0x804DABE4@ha */
/* 804DA7EC  38 84 AB E4 */	addi r4, r4, __ct__8dCcD_CylFv@l /* 0x804DABE4@l */
/* 804DA7F0  3C A0 80 4E */	lis r5, __dt__8dCcD_CylFv@ha /* 0x804DAB18@ha */
/* 804DA7F4  38 A5 AB 18 */	addi r5, r5, __dt__8dCcD_CylFv@l /* 0x804DAB18@l */
/* 804DA7F8  38 C0 01 3C */	li r6, 0x13c
/* 804DA7FC  38 E0 00 05 */	li r7, 5
/* 804DA800  4B E8 75 61 */	bl __construct_array
/* 804DA804  38 7E 13 AC */	addi r3, r30, 0x13ac
/* 804DA808  4B B9 D8 29 */	bl __ct__15dBgS_LinkLinChkFv
/* 804DA80C  38 7E 14 1C */	addi r3, r30, 0x141c
/* 804DA810  4B DE 40 35 */	bl __ct__16Z2SoundObjSimpleFv
lbl_804DA814:
/* 804DA814  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 804DA818  60 00 00 08 */	ori r0, r0, 8
/* 804DA81C  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_804DA820:
/* 804DA820  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DA824  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DA828  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 804DA82C  3C 80 80 4E */	lis r4, d_a_canoe__stringBase0@ha /* 0x804DD6E8@ha */
/* 804DA830  38 84 D6 E8 */	addi r4, r4, d_a_canoe__stringBase0@l /* 0x804DD6E8@l */
/* 804DA834  4B E8 E1 61 */	bl strcmp
/* 804DA838  2C 03 00 00 */	cmpwi r3, 0
/* 804DA83C  40 82 00 64 */	bne lbl_804DA8A0
/* 804DA840  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DA844  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DA848  3B 83 07 F0 */	addi r28, r3, 0x7f0
/* 804DA84C  7F 83 E3 78 */	mr r3, r28
/* 804DA850  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 804DA854  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 804DA858  A0 84 03 9E */	lhz r4, 0x39e(r4)
/* 804DA85C  4B B5 A1 61 */	bl isEventBit__11dSv_event_cCFUs
/* 804DA860  2C 03 00 00 */	cmpwi r3, 0
/* 804DA864  40 82 00 0C */	bne lbl_804DA870
/* 804DA868  38 60 00 05 */	li r3, 5
/* 804DA86C  48 00 02 94 */	b lbl_804DAB00
lbl_804DA870:
/* 804DA870  7F 83 E3 78 */	mr r3, r28
/* 804DA874  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 804DA878  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 804DA87C  A0 84 03 A0 */	lhz r4, 0x3a0(r4)
/* 804DA880  4B B5 A1 3D */	bl isEventBit__11dSv_event_cCFUs
/* 804DA884  2C 03 00 00 */	cmpwi r3, 0
/* 804DA888  41 82 00 10 */	beq lbl_804DA898
/* 804DA88C  38 00 00 02 */	li r0, 2
/* 804DA890  90 1D 00 B0 */	stw r0, 0xb0(r29)
/* 804DA894  48 00 00 0C */	b lbl_804DA8A0
lbl_804DA898:
/* 804DA898  38 00 00 01 */	li r0, 1
/* 804DA89C  90 1D 00 B0 */	stw r0, 0xb0(r29)
lbl_804DA8A0:
/* 804DA8A0  3B 60 18 10 */	li r27, 0x1810
/* 804DA8A4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 804DA8A8  28 00 00 02 */	cmplwi r0, 2
/* 804DA8AC  40 82 00 10 */	bne lbl_804DA8BC
/* 804DA8B0  38 1F 00 1C */	addi r0, r31, 0x1c
/* 804DA8B4  90 1D 14 3C */	stw r0, 0x143c(r29)
/* 804DA8B8  48 00 00 24 */	b lbl_804DA8DC
lbl_804DA8BC:
/* 804DA8BC  28 00 00 01 */	cmplwi r0, 1
/* 804DA8C0  40 82 00 14 */	bne lbl_804DA8D4
/* 804DA8C4  38 1F 00 0C */	addi r0, r31, 0xc
/* 804DA8C8  90 1D 14 3C */	stw r0, 0x143c(r29)
/* 804DA8CC  3B 60 1E B0 */	li r27, 0x1eb0
/* 804DA8D0  48 00 00 0C */	b lbl_804DA8DC
lbl_804DA8D4:
/* 804DA8D4  38 1F 00 14 */	addi r0, r31, 0x14
/* 804DA8D8  90 1D 14 3C */	stw r0, 0x143c(r29)
lbl_804DA8DC:
/* 804DA8DC  38 7D 05 68 */	addi r3, r29, 0x568
/* 804DA8E0  80 9D 14 3C */	lwz r4, 0x143c(r29)
/* 804DA8E4  4B B5 25 D9 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 804DA8E8  7C 7E 1B 78 */	mr r30, r3
/* 804DA8EC  2C 1E 00 04 */	cmpwi r30, 4
/* 804DA8F0  40 82 02 0C */	bne lbl_804DAAFC
/* 804DA8F4  7F A3 EB 78 */	mr r3, r29
/* 804DA8F8  3C 80 80 4E */	lis r4, daCanoe_createHeap__FP10fopAc_ac_c@ha /* 0x804DA720@ha */
/* 804DA8FC  38 84 A7 20 */	addi r4, r4, daCanoe_createHeap__FP10fopAc_ac_c@l /* 0x804DA720@l */
/* 804DA900  7F 65 DB 78 */	mr r5, r27
/* 804DA904  4B B3 FB AD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 804DA908  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804DA90C  40 82 00 0C */	bne lbl_804DA918
/* 804DA910  38 60 00 05 */	li r3, 5
/* 804DA914  48 00 01 EC */	b lbl_804DAB00
lbl_804DA918:
/* 804DA918  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 804DA91C  38 03 00 24 */	addi r0, r3, 0x24
/* 804DA920  90 1D 05 04 */	stw r0, 0x504(r29)
/* 804DA924  7F A3 EB 78 */	mr r3, r29
/* 804DA928  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 804DA92C  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 804DA930  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 804DA934  4B B3 FB F5 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 804DA938  7F A3 EB 78 */	mr r3, r29
/* 804DA93C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804DA940  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 804DA944  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 804DA948  4B B3 FB F1 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 804DA94C  38 7D 05 7C */	addi r3, r29, 0x57c
/* 804DA950  38 80 00 C8 */	li r4, 0xc8
/* 804DA954  38 A0 00 00 */	li r5, 0
/* 804DA958  7F A6 EB 78 */	mr r6, r29
/* 804DA95C  4B BA 8F 05 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 804DA960  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 804DA964  98 1D 05 9E */	stb r0, 0x59e(r29)
/* 804DA968  7F A3 EB 78 */	mr r3, r29
/* 804DA96C  48 00 0E 41 */	bl setFrontBackPos__9daCanoe_cFv
/* 804DA970  C0 1D 14 94 */	lfs f0, 0x1494(r29)
/* 804DA974  D0 1D 14 AC */	stfs f0, 0x14ac(r29)
/* 804DA978  C0 1D 14 98 */	lfs f0, 0x1498(r29)
/* 804DA97C  D0 1D 14 B0 */	stfs f0, 0x14b0(r29)
/* 804DA980  C0 1D 14 9C */	lfs f0, 0x149c(r29)
/* 804DA984  D0 1D 14 B4 */	stfs f0, 0x14b4(r29)
/* 804DA988  C0 1D 14 A0 */	lfs f0, 0x14a0(r29)
/* 804DA98C  D0 1D 14 B8 */	stfs f0, 0x14b8(r29)
/* 804DA990  C0 1D 14 A4 */	lfs f0, 0x14a4(r29)
/* 804DA994  D0 1D 14 BC */	stfs f0, 0x14bc(r29)
/* 804DA998  C0 1D 14 A8 */	lfs f0, 0x14a8(r29)
/* 804DA99C  D0 1D 14 C0 */	stfs f0, 0x14c0(r29)
/* 804DA9A0  3B 40 00 00 */	li r26, 0
/* 804DA9A4  3B 80 00 00 */	li r28, 0
lbl_804DA9A8:
/* 804DA9A8  7F 7D E2 14 */	add r27, r29, r28
/* 804DA9AC  38 7B 05 B8 */	addi r3, r27, 0x5b8
/* 804DA9B0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 804DA9B4  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 804DA9B8  4B B9 B5 A1 */	bl SetWall__12dBgS_AcchCirFff
/* 804DA9BC  38 7B 05 F8 */	addi r3, r27, 0x5f8
/* 804DA9C0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 804DA9C4  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 804DA9C8  4B B9 B5 91 */	bl SetWall__12dBgS_AcchCirFff
/* 804DA9CC  38 7B 06 38 */	addi r3, r27, 0x638
/* 804DA9D0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804DA9D4  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 804DA9D8  4B B9 B5 81 */	bl SetWall__12dBgS_AcchCirFff
/* 804DA9DC  3B 5A 00 01 */	addi r26, r26, 1
/* 804DA9E0  2C 1A 00 03 */	cmpwi r26, 3
/* 804DA9E4  3B 9C 00 C0 */	addi r28, r28, 0xc0
/* 804DA9E8  41 80 FF C0 */	blt lbl_804DA9A8
/* 804DA9EC  38 7D 07 F8 */	addi r3, r29, 0x7f8
/* 804DA9F0  7F A4 EB 78 */	mr r4, r29
/* 804DA9F4  38 A0 00 03 */	li r5, 3
/* 804DA9F8  38 DD 05 B8 */	addi r6, r29, 0x5b8
/* 804DA9FC  4B B9 B8 8D */	bl Set__9dBgS_AcchFP10fopAc_ac_ciP12dBgS_AcchCir
/* 804DAA00  3B 7D 04 E4 */	addi r27, r29, 0x4e4
/* 804DAA04  93 61 00 08 */	stw r27, 8(r1)
/* 804DAA08  38 7D 09 D0 */	addi r3, r29, 0x9d0
/* 804DAA0C  38 9D 14 94 */	addi r4, r29, 0x1494
/* 804DAA10  38 BD 14 AC */	addi r5, r29, 0x14ac
/* 804DAA14  7F A6 EB 78 */	mr r6, r29
/* 804DAA18  38 E0 00 03 */	li r7, 3
/* 804DAA1C  39 1D 06 78 */	addi r8, r29, 0x678
/* 804DAA20  3B FD 04 F8 */	addi r31, r29, 0x4f8
/* 804DAA24  7F E9 FB 78 */	mr r9, r31
/* 804DAA28  3B 9D 04 DC */	addi r28, r29, 0x4dc
/* 804DAA2C  7F 8A E3 78 */	mr r10, r28
/* 804DAA30  4B B9 B8 19 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 804DAA34  93 61 00 08 */	stw r27, 8(r1)
/* 804DAA38  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 804DAA3C  38 9D 14 A0 */	addi r4, r29, 0x14a0
/* 804DAA40  38 BD 14 B8 */	addi r5, r29, 0x14b8
/* 804DAA44  7F A6 EB 78 */	mr r6, r29
/* 804DAA48  38 E0 00 03 */	li r7, 3
/* 804DAA4C  39 1D 07 38 */	addi r8, r29, 0x738
/* 804DAA50  7F E9 FB 78 */	mr r9, r31
/* 804DAA54  7F 8A E3 78 */	mr r10, r28
/* 804DAA58  4B B9 B7 F1 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 804DAA5C  80 1D 09 FC */	lwz r0, 0x9fc(r29)
/* 804DAA60  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 804DAA64  90 1D 09 FC */	stw r0, 0x9fc(r29)
/* 804DAA68  38 60 00 02 */	li r3, 2
/* 804DAA6C  98 7D 0B A4 */	stb r3, 0xba4(r29)
/* 804DAA70  80 1D 0B D4 */	lwz r0, 0xbd4(r29)
/* 804DAA74  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 804DAA78  90 1D 0B D4 */	stw r0, 0xbd4(r29)
/* 804DAA7C  98 7D 0D 7C */	stb r3, 0xd7c(r29)
/* 804DAA80  80 1D 08 24 */	lwz r0, 0x824(r29)
/* 804DAA84  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 804DAA88  90 1D 08 24 */	stw r0, 0x824(r29)
/* 804DAA8C  98 7D 09 CC */	stb r3, 0x9cc(r29)
/* 804DAA90  3B 5D 0D 80 */	addi r26, r29, 0xd80
/* 804DAA94  3B 60 00 00 */	li r27, 0
/* 804DAA98  3C 60 80 4E */	lis r3, l_cylSrc@ha /* 0x804DD6F0@ha */
/* 804DAA9C  3B E3 D6 F0 */	addi r31, r3, l_cylSrc@l /* 0x804DD6F0@l */
/* 804DAAA0  3B 9D 05 7C */	addi r28, r29, 0x57c
lbl_804DAAA4:
/* 804DAAA4  7F 43 D3 78 */	mr r3, r26
/* 804DAAA8  7F E4 FB 78 */	mr r4, r31
/* 804DAAAC  4B BA 9E 09 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 804DAAB0  93 9A 00 44 */	stw r28, 0x44(r26)
/* 804DAAB4  3B 7B 00 01 */	addi r27, r27, 1
/* 804DAAB8  2C 1B 00 05 */	cmpwi r27, 5
/* 804DAABC  3B 5A 01 3C */	addi r26, r26, 0x13c
/* 804DAAC0  41 80 FF E4 */	blt lbl_804DAAA4
/* 804DAAC4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 804DAAC8  98 1D 04 8C */	stb r0, 0x48c(r29)
/* 804DAACC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 804DAAD0  7C 03 07 74 */	extsb r3, r0
/* 804DAAD4  4B B5 25 99 */	bl dComIfGp_getReverb__Fi
/* 804DAAD8  98 7D 14 45 */	stb r3, 0x1445(r29)
/* 804DAADC  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 804DAAE0  B0 1D 14 4C */	sth r0, 0x144c(r29)
/* 804DAAE4  38 00 00 20 */	li r0, 0x20
/* 804DAAE8  98 1D 05 4B */	stb r0, 0x54b(r29)
/* 804DAAEC  38 00 FF FF */	li r0, -1
/* 804DAAF0  90 1D 14 64 */	stw r0, 0x1464(r29)
/* 804DAAF4  7F A3 EB 78 */	mr r3, r29
/* 804DAAF8  48 00 05 B9 */	bl setMatrix__9daCanoe_cFv
lbl_804DAAFC:
/* 804DAAFC  7F C3 F3 78 */	mr r3, r30
lbl_804DAB00:
/* 804DAB00  39 61 00 30 */	addi r11, r1, 0x30
/* 804DAB04  4B E8 77 19 */	bl _restgpr_26
/* 804DAB08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804DAB0C  7C 08 03 A6 */	mtlr r0
/* 804DAB10  38 21 00 30 */	addi r1, r1, 0x30
/* 804DAB14  4E 80 00 20 */	blr 
