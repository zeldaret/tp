lbl_80664840:
/* 80664840  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80664844  7C 08 02 A6 */	mflr r0
/* 80664848  90 01 00 24 */	stw r0, 0x24(r1)
/* 8066484C  39 61 00 20 */	addi r11, r1, 0x20
/* 80664850  4B CF D9 8D */	bl _savegpr_29
/* 80664854  7C 7E 1B 79 */	or. r30, r3, r3
/* 80664858  7C 9F 23 78 */	mr r31, r4
/* 8066485C  41 82 02 00 */	beq lbl_80664A5C
/* 80664860  38 7E 0A 14 */	addi r3, r30, 0xa14
/* 80664864  81 9E 0A 14 */	lwz r12, 0xa14(r30)
/* 80664868  81 8C 00 08 */	lwz r12, 8(r12)
/* 8066486C  7D 89 03 A6 */	mtctr r12
/* 80664870  4E 80 04 21 */	bctrl 
/* 80664874  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80664878  28 03 00 00 */	cmplwi r3, 0
/* 8066487C  41 82 00 08 */	beq lbl_80664884
/* 80664880  4B 9A CA 91 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80664884:
/* 80664884  80 1E 0A EC */	lwz r0, 0xaec(r30)
/* 80664888  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 8066488C  41 82 00 2C */	beq lbl_806648B8
/* 80664890  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80664894  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80664898  3B A3 09 58 */	addi r29, r3, 0x958
/* 8066489C  7F A3 EB 78 */	mr r3, r29
/* 806648A0  88 9E 0A E4 */	lbz r4, 0xae4(r30)
/* 806648A4  4B 9C FF 21 */	bl offTbox__12dSv_memBit_cFi
/* 806648A8  7F A3 EB 78 */	mr r3, r29
/* 806648AC  88 9E 0A E4 */	lbz r4, 0xae4(r30)
/* 806648B0  38 84 FF FF */	addi r4, r4, -1
/* 806648B4  4B 9C FE ED */	bl onTbox__12dSv_memBit_cFi
lbl_806648B8:
/* 806648B8  38 7E 05 6C */	addi r3, r30, 0x56c
/* 806648BC  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 806648C0  4B 9C 87 49 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806648C4  38 7E 0A 14 */	addi r3, r30, 0xa14
/* 806648C8  38 80 FF FF */	li r4, -1
/* 806648CC  4B C5 BB 55 */	bl __dt__10Z2CreatureFv
/* 806648D0  34 1E 08 C0 */	addic. r0, r30, 0x8c0
/* 806648D4  41 82 00 84 */	beq lbl_80664958
/* 806648D8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 806648DC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 806648E0  90 7E 08 FC */	stw r3, 0x8fc(r30)
/* 806648E4  38 03 00 2C */	addi r0, r3, 0x2c
/* 806648E8  90 1E 09 E0 */	stw r0, 0x9e0(r30)
/* 806648EC  38 03 00 84 */	addi r0, r3, 0x84
/* 806648F0  90 1E 09 F8 */	stw r0, 0x9f8(r30)
/* 806648F4  34 1E 09 C4 */	addic. r0, r30, 0x9c4
/* 806648F8  41 82 00 54 */	beq lbl_8066494C
/* 806648FC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80664900  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80664904  90 7E 09 E0 */	stw r3, 0x9e0(r30)
/* 80664908  38 03 00 58 */	addi r0, r3, 0x58
/* 8066490C  90 1E 09 F8 */	stw r0, 0x9f8(r30)
/* 80664910  34 1E 09 E4 */	addic. r0, r30, 0x9e4
/* 80664914  41 82 00 10 */	beq lbl_80664924
/* 80664918  3C 60 80 66 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80667B5C@ha */
/* 8066491C  38 03 7B 5C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80667B5C@l */
/* 80664920  90 1E 09 F8 */	stw r0, 0x9f8(r30)
lbl_80664924:
/* 80664924  34 1E 09 C4 */	addic. r0, r30, 0x9c4
/* 80664928  41 82 00 24 */	beq lbl_8066494C
/* 8066492C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80664930  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80664934  90 1E 09 E0 */	stw r0, 0x9e0(r30)
/* 80664938  34 1E 09 C4 */	addic. r0, r30, 0x9c4
/* 8066493C  41 82 00 10 */	beq lbl_8066494C
/* 80664940  3C 60 80 66 */	lis r3, __vt__8cM3dGAab@ha /* 0x80667B68@ha */
/* 80664944  38 03 7B 68 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80667B68@l */
/* 80664948  90 1E 09 DC */	stw r0, 0x9dc(r30)
lbl_8066494C:
/* 8066494C  38 7E 08 C0 */	addi r3, r30, 0x8c0
/* 80664950  38 80 00 00 */	li r4, 0
/* 80664954  4B A1 F7 91 */	bl __dt__12dCcD_GObjInfFv
lbl_80664958:
/* 80664958  34 1E 08 84 */	addic. r0, r30, 0x884
/* 8066495C  41 82 00 54 */	beq lbl_806649B0
/* 80664960  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80664964  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80664968  90 7E 08 9C */	stw r3, 0x89c(r30)
/* 8066496C  38 03 00 20 */	addi r0, r3, 0x20
/* 80664970  90 1E 08 A0 */	stw r0, 0x8a0(r30)
/* 80664974  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80664978  41 82 00 24 */	beq lbl_8066499C
/* 8066497C  3C 60 80 66 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80667B14@ha */
/* 80664980  38 03 7B 14 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80667B14@l */
/* 80664984  90 1E 08 A0 */	stw r0, 0x8a0(r30)
/* 80664988  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 8066498C  41 82 00 10 */	beq lbl_8066499C
/* 80664990  3C 60 80 66 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80667B08@ha */
/* 80664994  38 03 7B 08 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80667B08@l */
/* 80664998  90 1E 08 A0 */	stw r0, 0x8a0(r30)
lbl_8066499C:
/* 8066499C  34 1E 08 84 */	addic. r0, r30, 0x884
/* 806649A0  41 82 00 10 */	beq lbl_806649B0
/* 806649A4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 806649A8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 806649AC  90 1E 08 9C */	stw r0, 0x89c(r30)
lbl_806649B0:
/* 806649B0  34 1E 06 AC */	addic. r0, r30, 0x6ac
/* 806649B4  41 82 00 2C */	beq lbl_806649E0
/* 806649B8  3C 60 80 66 */	lis r3, __vt__15dBgS_StatueAcch@ha /* 0x80667B20@ha */
/* 806649BC  38 63 7B 20 */	addi r3, r3, __vt__15dBgS_StatueAcch@l /* 0x80667B20@l */
/* 806649C0  90 7E 06 BC */	stw r3, 0x6bc(r30)
/* 806649C4  38 03 00 0C */	addi r0, r3, 0xc
/* 806649C8  90 1E 06 C0 */	stw r0, 0x6c0(r30)
/* 806649CC  38 03 00 18 */	addi r0, r3, 0x18
/* 806649D0  90 1E 06 D0 */	stw r0, 0x6d0(r30)
/* 806649D4  38 7E 06 AC */	addi r3, r30, 0x6ac
/* 806649D8  38 80 00 00 */	li r4, 0
/* 806649DC  4B A1 15 B9 */	bl __dt__9dBgS_AcchFv
lbl_806649E0:
/* 806649E0  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 806649E4  3C 80 80 66 */	lis r4, __dt__12dBgS_AcchCirFv@ha /* 0x80664768@ha */
/* 806649E8  38 84 47 68 */	addi r4, r4, __dt__12dBgS_AcchCirFv@l /* 0x80664768@l */
/* 806649EC  38 A0 00 40 */	li r5, 0x40
/* 806649F0  38 C0 00 04 */	li r6, 4
/* 806649F4  4B CF D2 F5 */	bl __destroy_arr
/* 806649F8  34 1E 05 94 */	addic. r0, r30, 0x594
/* 806649FC  41 82 00 20 */	beq lbl_80664A1C
/* 80664A00  34 1E 05 94 */	addic. r0, r30, 0x594
/* 80664A04  41 82 00 18 */	beq lbl_80664A1C
/* 80664A08  34 1E 05 94 */	addic. r0, r30, 0x594
/* 80664A0C  41 82 00 10 */	beq lbl_80664A1C
/* 80664A10  3C 60 80 66 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80667B44@ha */
/* 80664A14  38 03 7B 44 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80667B44@l */
/* 80664A18  90 1E 05 94 */	stw r0, 0x594(r30)
lbl_80664A1C:
/* 80664A1C  34 1E 05 7C */	addic. r0, r30, 0x57c
/* 80664A20  41 82 00 20 */	beq lbl_80664A40
/* 80664A24  34 1E 05 7C */	addic. r0, r30, 0x57c
/* 80664A28  41 82 00 18 */	beq lbl_80664A40
/* 80664A2C  34 1E 05 7C */	addic. r0, r30, 0x57c
/* 80664A30  41 82 00 10 */	beq lbl_80664A40
/* 80664A34  3C 60 80 66 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80667B44@ha */
/* 80664A38  38 03 7B 44 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80667B44@l */
/* 80664A3C  90 1E 05 7C */	stw r0, 0x57c(r30)
lbl_80664A40:
/* 80664A40  7F C3 F3 78 */	mr r3, r30
/* 80664A44  38 80 00 00 */	li r4, 0
/* 80664A48  4B 9B 42 45 */	bl __dt__10fopAc_ac_cFv
/* 80664A4C  7F E0 07 35 */	extsh. r0, r31
/* 80664A50  40 81 00 0C */	ble lbl_80664A5C
/* 80664A54  7F C3 F3 78 */	mr r3, r30
/* 80664A58  4B C6 A2 E5 */	bl __dl__FPv
lbl_80664A5C:
/* 80664A5C  7F C3 F3 78 */	mr r3, r30
/* 80664A60  39 61 00 20 */	addi r11, r1, 0x20
/* 80664A64  4B CF D7 C5 */	bl _restgpr_29
/* 80664A68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80664A6C  7C 08 03 A6 */	mtlr r0
/* 80664A70  38 21 00 20 */	addi r1, r1, 0x20
/* 80664A74  4E 80 00 20 */	blr 
