lbl_80963BA8:
/* 80963BA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80963BAC  7C 08 02 A6 */	mflr r0
/* 80963BB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80963BB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80963BB8  4B 9F E6 24 */	b _savegpr_29
/* 80963BBC  7C 7F 1B 78 */	mr r31, r3
/* 80963BC0  88 03 12 00 */	lbz r0, 0x1200(r3)
/* 80963BC4  2C 00 00 01 */	cmpwi r0, 1
/* 80963BC8  41 82 00 74 */	beq lbl_80963C3C
/* 80963BCC  40 80 00 10 */	bge lbl_80963BDC
/* 80963BD0  2C 00 00 00 */	cmpwi r0, 0
/* 80963BD4  40 80 00 18 */	bge lbl_80963BEC
/* 80963BD8  48 00 01 C0 */	b lbl_80963D98
lbl_80963BDC:
/* 80963BDC  2C 00 00 04 */	cmpwi r0, 4
/* 80963BE0  41 82 01 24 */	beq lbl_80963D04
/* 80963BE4  40 80 01 B4 */	bge lbl_80963D98
/* 80963BE8  48 00 00 CC */	b lbl_80963CB4
lbl_80963BEC:
/* 80963BEC  3B A0 00 00 */	li r29, 0
lbl_80963BF0:
/* 80963BF0  38 1D 00 05 */	addi r0, r29, 5
/* 80963BF4  54 03 18 38 */	slwi r3, r0, 3
/* 80963BF8  3B C3 12 04 */	addi r30, r3, 0x1204
/* 80963BFC  7F DF F2 14 */	add r30, r31, r30
/* 80963C00  7F C3 F3 78 */	mr r3, r30
/* 80963C04  4B 7E 1B 04 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80963C08  28 03 00 00 */	cmplwi r3, 0
/* 80963C0C  40 82 00 20 */	bne lbl_80963C2C
/* 80963C10  7F E3 FB 78 */	mr r3, r31
/* 80963C14  38 80 00 03 */	li r4, 3
/* 80963C18  7F A5 EB 78 */	mr r5, r29
/* 80963C1C  4B 7E 82 C8 */	b getEvtAreaTagP__8daNpcT_cFii
/* 80963C20  7C 64 1B 78 */	mr r4, r3
/* 80963C24  7F C3 F3 78 */	mr r3, r30
/* 80963C28  4B 7E 1A B8 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80963C2C:
/* 80963C2C  3B BD 00 01 */	addi r29, r29, 1
/* 80963C30  2C 1D 00 02 */	cmpwi r29, 2
/* 80963C34  41 80 FF BC */	blt lbl_80963BF0
/* 80963C38  48 00 01 60 */	b lbl_80963D98
lbl_80963C3C:
/* 80963C3C  3B A0 00 00 */	li r29, 0
lbl_80963C40:
/* 80963C40  38 1D 00 05 */	addi r0, r29, 5
/* 80963C44  54 03 18 38 */	slwi r3, r0, 3
/* 80963C48  3B C3 12 04 */	addi r30, r3, 0x1204
/* 80963C4C  7F DF F2 14 */	add r30, r31, r30
/* 80963C50  7F C3 F3 78 */	mr r3, r30
/* 80963C54  4B 7E 1A B4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80963C58  28 03 00 00 */	cmplwi r3, 0
/* 80963C5C  40 82 00 20 */	bne lbl_80963C7C
/* 80963C60  7F E3 FB 78 */	mr r3, r31
/* 80963C64  38 80 00 03 */	li r4, 3
/* 80963C68  7F A5 EB 78 */	mr r5, r29
/* 80963C6C  4B 7E 82 78 */	b getEvtAreaTagP__8daNpcT_cFii
/* 80963C70  7C 64 1B 78 */	mr r4, r3
/* 80963C74  7F C3 F3 78 */	mr r3, r30
/* 80963C78  4B 7E 1A 68 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80963C7C:
/* 80963C7C  3B BD 00 01 */	addi r29, r29, 1
/* 80963C80  2C 1D 00 02 */	cmpwi r29, 2
/* 80963C84  41 80 FF BC */	blt lbl_80963C40
/* 80963C88  38 7F 12 1C */	addi r3, r31, 0x121c
/* 80963C8C  4B 7E 1A 7C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80963C90  28 03 00 00 */	cmplwi r3, 0
/* 80963C94  40 82 01 04 */	bne lbl_80963D98
/* 80963C98  7F E3 FB 78 */	mr r3, r31
/* 80963C9C  38 80 02 50 */	li r4, 0x250
/* 80963CA0  4B 7E 81 8C */	b getNearestActorP__8daNpcT_cFs
/* 80963CA4  7C 64 1B 78 */	mr r4, r3
/* 80963CA8  38 7F 12 1C */	addi r3, r31, 0x121c
/* 80963CAC  4B 7E 1A 34 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80963CB0  48 00 00 E8 */	b lbl_80963D98
lbl_80963CB4:
/* 80963CB4  3B A0 00 00 */	li r29, 0
lbl_80963CB8:
/* 80963CB8  38 1D 00 05 */	addi r0, r29, 5
/* 80963CBC  54 03 18 38 */	slwi r3, r0, 3
/* 80963CC0  3B C3 12 04 */	addi r30, r3, 0x1204
/* 80963CC4  7F DF F2 14 */	add r30, r31, r30
/* 80963CC8  7F C3 F3 78 */	mr r3, r30
/* 80963CCC  4B 7E 1A 3C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80963CD0  28 03 00 00 */	cmplwi r3, 0
/* 80963CD4  40 82 00 20 */	bne lbl_80963CF4
/* 80963CD8  7F E3 FB 78 */	mr r3, r31
/* 80963CDC  38 80 00 03 */	li r4, 3
/* 80963CE0  7F A5 EB 78 */	mr r5, r29
/* 80963CE4  4B 7E 82 00 */	b getEvtAreaTagP__8daNpcT_cFii
/* 80963CE8  7C 64 1B 78 */	mr r4, r3
/* 80963CEC  7F C3 F3 78 */	mr r3, r30
/* 80963CF0  4B 7E 19 F0 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80963CF4:
/* 80963CF4  3B BD 00 01 */	addi r29, r29, 1
/* 80963CF8  2C 1D 00 02 */	cmpwi r29, 2
/* 80963CFC  41 80 FF BC */	blt lbl_80963CB8
/* 80963D00  48 00 00 98 */	b lbl_80963D98
lbl_80963D04:
/* 80963D04  3B A0 00 00 */	li r29, 0
lbl_80963D08:
/* 80963D08  38 1D 00 05 */	addi r0, r29, 5
/* 80963D0C  54 03 18 38 */	slwi r3, r0, 3
/* 80963D10  3B C3 12 04 */	addi r30, r3, 0x1204
/* 80963D14  7F DF F2 14 */	add r30, r31, r30
/* 80963D18  7F C3 F3 78 */	mr r3, r30
/* 80963D1C  4B 7E 19 EC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80963D20  28 03 00 00 */	cmplwi r3, 0
/* 80963D24  40 82 00 20 */	bne lbl_80963D44
/* 80963D28  7F E3 FB 78 */	mr r3, r31
/* 80963D2C  38 80 00 03 */	li r4, 3
/* 80963D30  7F A5 EB 78 */	mr r5, r29
/* 80963D34  4B 7E 81 B0 */	b getEvtAreaTagP__8daNpcT_cFii
/* 80963D38  7C 64 1B 78 */	mr r4, r3
/* 80963D3C  7F C3 F3 78 */	mr r3, r30
/* 80963D40  4B 7E 19 A0 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80963D44:
/* 80963D44  3B BD 00 01 */	addi r29, r29, 1
/* 80963D48  2C 1D 00 02 */	cmpwi r29, 2
/* 80963D4C  41 80 FF BC */	blt lbl_80963D08
/* 80963D50  38 7F 12 3C */	addi r3, r31, 0x123c
/* 80963D54  4B 7E 19 B4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80963D58  28 03 00 00 */	cmplwi r3, 0
/* 80963D5C  40 82 00 18 */	bne lbl_80963D74
/* 80963D60  7F E3 FB 78 */	mr r3, r31
/* 80963D64  48 00 11 4D */	bl getKMsgTagP__12daNpc_Bans_cFv
/* 80963D68  7C 64 1B 78 */	mr r4, r3
/* 80963D6C  38 7F 12 3C */	addi r3, r31, 0x123c
/* 80963D70  4B 7E 19 70 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80963D74:
/* 80963D74  38 7F 12 24 */	addi r3, r31, 0x1224
/* 80963D78  4B 7E 19 90 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80963D7C  28 03 00 00 */	cmplwi r3, 0
/* 80963D80  40 82 00 18 */	bne lbl_80963D98
/* 80963D84  7F E3 FB 78 */	mr r3, r31
/* 80963D88  4B 7E 82 28 */	b getShopItemTagP__8daNpcT_cFv
/* 80963D8C  7C 64 1B 78 */	mr r4, r3
/* 80963D90  38 7F 12 24 */	addi r3, r31, 0x1224
/* 80963D94  4B 7E 19 4C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80963D98:
/* 80963D98  39 61 00 20 */	addi r11, r1, 0x20
/* 80963D9C  4B 9F E4 8C */	b _restgpr_29
/* 80963DA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80963DA4  7C 08 03 A6 */	mtlr r0
/* 80963DA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80963DAC  4E 80 00 20 */	blr 
