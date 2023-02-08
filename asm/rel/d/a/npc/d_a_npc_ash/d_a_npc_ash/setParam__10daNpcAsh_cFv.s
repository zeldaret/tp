lbl_8095BCF0:
/* 8095BCF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8095BCF4  7C 08 02 A6 */	mflr r0
/* 8095BCF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8095BCFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8095BD00  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8095BD04  7C 7F 1B 78 */	mr r31, r3
/* 8095BD08  38 7F 0C 88 */	addi r3, r31, 0xc88
/* 8095BD0C  4B 7F 49 E1 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 8095BD10  28 03 00 00 */	cmplwi r3, 0
/* 8095BD14  40 82 00 28 */	bne lbl_8095BD3C
/* 8095BD18  38 00 02 9A */	li r0, 0x29a
/* 8095BD1C  B0 01 00 0E */	sth r0, 0xe(r1)
/* 8095BD20  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 8095BD24  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 8095BD28  38 81 00 0E */	addi r4, r1, 0xe
/* 8095BD2C  4B 6B DA CD */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8095BD30  7C 64 1B 78 */	mr r4, r3
/* 8095BD34  38 7F 0C 88 */	addi r3, r31, 0xc88
/* 8095BD38  4B 7F 49 85 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_8095BD3C:
/* 8095BD3C  38 7F 0C 90 */	addi r3, r31, 0xc90
/* 8095BD40  4B 7F 49 AD */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 8095BD44  28 03 00 00 */	cmplwi r3, 0
/* 8095BD48  40 82 00 28 */	bne lbl_8095BD70
/* 8095BD4C  38 00 02 9B */	li r0, 0x29b
/* 8095BD50  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8095BD54  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 8095BD58  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 8095BD5C  38 81 00 0C */	addi r4, r1, 0xc
/* 8095BD60  4B 6B DA 99 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8095BD64  7C 64 1B 78 */	mr r4, r3
/* 8095BD68  38 7F 0C 90 */	addi r3, r31, 0xc90
/* 8095BD6C  4B 7F 49 51 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_8095BD70:
/* 8095BD70  38 7F 0C 98 */	addi r3, r31, 0xc98
/* 8095BD74  4B 7F 49 79 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 8095BD78  28 03 00 00 */	cmplwi r3, 0
/* 8095BD7C  40 82 00 28 */	bne lbl_8095BDA4
/* 8095BD80  38 00 02 9C */	li r0, 0x29c
/* 8095BD84  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8095BD88  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 8095BD8C  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 8095BD90  38 81 00 0A */	addi r4, r1, 0xa
/* 8095BD94  4B 6B DA 65 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8095BD98  7C 64 1B 78 */	mr r4, r3
/* 8095BD9C  38 7F 0C 98 */	addi r3, r31, 0xc98
/* 8095BDA0  4B 7F 49 1D */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_8095BDA4:
/* 8095BDA4  3B C0 00 00 */	li r30, 0
/* 8095BDA8  38 60 01 0C */	li r3, 0x10c
/* 8095BDAC  4B 7F 98 89 */	bl daNpcF_chkEvtBit__FUl
/* 8095BDB0  2C 03 00 00 */	cmpwi r3, 0
/* 8095BDB4  40 82 00 14 */	bne lbl_8095BDC8
/* 8095BDB8  38 60 01 08 */	li r3, 0x108
/* 8095BDBC  4B 7F 98 79 */	bl daNpcF_chkEvtBit__FUl
/* 8095BDC0  2C 03 00 00 */	cmpwi r3, 0
/* 8095BDC4  40 82 00 08 */	bne lbl_8095BDCC
lbl_8095BDC8:
/* 8095BDC8  3B C0 00 01 */	li r30, 1
lbl_8095BDCC:
/* 8095BDCC  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8095BDD0  40 82 00 38 */	bne lbl_8095BE08
/* 8095BDD4  38 7F 0C A0 */	addi r3, r31, 0xca0
/* 8095BDD8  4B 7F 49 15 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 8095BDDC  28 03 00 00 */	cmplwi r3, 0
/* 8095BDE0  40 82 00 28 */	bne lbl_8095BE08
/* 8095BDE4  38 00 00 B8 */	li r0, 0xb8
/* 8095BDE8  B0 01 00 08 */	sth r0, 8(r1)
/* 8095BDEC  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 8095BDF0  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 8095BDF4  38 81 00 08 */	addi r4, r1, 8
/* 8095BDF8  4B 6B DA 01 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8095BDFC  7C 64 1B 78 */	mr r4, r3
/* 8095BE00  38 7F 0C A0 */	addi r3, r31, 0xca0
/* 8095BE04  4B 7F 48 B9 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_8095BE08:
/* 8095BE08  38 7F 0C A8 */	addi r3, r31, 0xca8
/* 8095BE0C  4B 7F 48 E1 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 8095BE10  28 03 00 00 */	cmplwi r3, 0
/* 8095BE14  40 82 00 20 */	bne lbl_8095BE34
/* 8095BE18  7F E3 FB 78 */	mr r3, r31
/* 8095BE1C  38 80 00 11 */	li r4, 0x11
/* 8095BE20  38 A0 00 00 */	li r5, 0
/* 8095BE24  4B 7F 84 7D */	bl getEvtAreaTagP__8daNpcF_cFii
/* 8095BE28  7C 64 1B 78 */	mr r4, r3
/* 8095BE2C  38 7F 0C A8 */	addi r3, r31, 0xca8
/* 8095BE30  4B 7F 48 8D */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_8095BE34:
/* 8095BE34  38 00 00 0A */	li r0, 0xa
/* 8095BE38  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8095BE3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8095BE40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8095BE44  3B C3 4E 00 */	addi r30, r3, 0x4e00
/* 8095BE48  7F C3 F3 78 */	mr r3, r30
/* 8095BE4C  3C 80 80 96 */	lis r4, d_a_npc_ash__stringBase0@ha /* 0x8095D910@ha */
/* 8095BE50  38 84 D9 10 */	addi r4, r4, d_a_npc_ash__stringBase0@l /* 0x8095D910@l */
/* 8095BE54  38 84 00 6C */	addi r4, r4, 0x6c
/* 8095BE58  4B A0 CB 3D */	bl strcmp
/* 8095BE5C  2C 03 00 00 */	cmpwi r3, 0
/* 8095BE60  40 82 00 30 */	bne lbl_8095BE90
/* 8095BE64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8095BE68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8095BE6C  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 8095BE70  2C 00 00 05 */	cmpwi r0, 5
/* 8095BE74  40 82 00 1C */	bne lbl_8095BE90
/* 8095BE78  38 60 00 00 */	li r3, 0
/* 8095BE7C  4B 6D 0B 01 */	bl getLayerNo__14dComIfG_play_cFi
/* 8095BE80  2C 03 00 02 */	cmpwi r3, 2
/* 8095BE84  40 82 00 0C */	bne lbl_8095BE90
/* 8095BE88  38 00 00 01 */	li r0, 1
/* 8095BE8C  48 00 00 08 */	b lbl_8095BE94
lbl_8095BE90:
/* 8095BE90  38 00 00 00 */	li r0, 0
lbl_8095BE94:
/* 8095BE94  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8095BE98  41 82 00 2C */	beq lbl_8095BEC4
/* 8095BE9C  38 00 00 4E */	li r0, 0x4e
/* 8095BEA0  98 1F 05 44 */	stb r0, 0x544(r31)
/* 8095BEA4  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 8095BEA8  98 1F 05 45 */	stb r0, 0x545(r31)
/* 8095BEAC  38 00 00 4D */	li r0, 0x4d
/* 8095BEB0  98 1F 05 47 */	stb r0, 0x547(r31)
/* 8095BEB4  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8095BEB8  64 00 00 80 */	oris r0, r0, 0x80
/* 8095BEBC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8095BEC0  48 00 00 94 */	b lbl_8095BF54
lbl_8095BEC4:
/* 8095BEC4  7F C3 F3 78 */	mr r3, r30
/* 8095BEC8  3C 80 80 96 */	lis r4, d_a_npc_ash__stringBase0@ha /* 0x8095D910@ha */
/* 8095BECC  38 84 D9 10 */	addi r4, r4, d_a_npc_ash__stringBase0@l /* 0x8095D910@l */
/* 8095BED0  38 84 00 6C */	addi r4, r4, 0x6c
/* 8095BED4  4B A0 CA C1 */	bl strcmp
/* 8095BED8  2C 03 00 00 */	cmpwi r3, 0
/* 8095BEDC  40 82 00 38 */	bne lbl_8095BF14
/* 8095BEE0  7F E3 FB 78 */	mr r3, r31
/* 8095BEE4  38 80 00 03 */	li r4, 3
/* 8095BEE8  38 A0 00 06 */	li r5, 6
/* 8095BEEC  4B 7F 83 8D */	bl getDistTableIdx__8daNpcF_cFii
/* 8095BEF0  98 7F 05 44 */	stb r3, 0x544(r31)
/* 8095BEF4  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 8095BEF8  98 1F 05 45 */	stb r0, 0x545(r31)
/* 8095BEFC  7F E3 FB 78 */	mr r3, r31
/* 8095BF00  38 80 00 02 */	li r4, 2
/* 8095BF04  38 A0 00 06 */	li r5, 6
/* 8095BF08  4B 7F 83 71 */	bl getDistTableIdx__8daNpcF_cFii
/* 8095BF0C  98 7F 05 47 */	stb r3, 0x547(r31)
/* 8095BF10  48 00 00 44 */	b lbl_8095BF54
lbl_8095BF14:
/* 8095BF14  7F E3 FB 78 */	mr r3, r31
/* 8095BF18  3C 80 80 96 */	lis r4, m__16daNpcAsh_Param_c@ha /* 0x8095D640@ha */
/* 8095BF1C  38 A4 D6 40 */	addi r5, r4, m__16daNpcAsh_Param_c@l /* 0x8095D640@l */
/* 8095BF20  A8 85 00 4C */	lha r4, 0x4c(r5)
/* 8095BF24  A8 A5 00 4E */	lha r5, 0x4e(r5)
/* 8095BF28  4B 7F 83 51 */	bl getDistTableIdx__8daNpcF_cFii
/* 8095BF2C  98 7F 05 44 */	stb r3, 0x544(r31)
/* 8095BF30  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 8095BF34  98 1F 05 45 */	stb r0, 0x545(r31)
/* 8095BF38  7F E3 FB 78 */	mr r3, r31
/* 8095BF3C  3C 80 80 96 */	lis r4, m__16daNpcAsh_Param_c@ha /* 0x8095D640@ha */
/* 8095BF40  38 A4 D6 40 */	addi r5, r4, m__16daNpcAsh_Param_c@l /* 0x8095D640@l */
/* 8095BF44  A8 85 00 48 */	lha r4, 0x48(r5)
/* 8095BF48  A8 A5 00 4A */	lha r5, 0x4a(r5)
/* 8095BF4C  4B 7F 83 2D */	bl getDistTableIdx__8daNpcF_cFii
/* 8095BF50  98 7F 05 47 */	stb r3, 0x547(r31)
lbl_8095BF54:
/* 8095BF54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8095BF58  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8095BF5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8095BF60  7C 08 03 A6 */	mtlr r0
/* 8095BF64  38 21 00 20 */	addi r1, r1, 0x20
/* 8095BF68  4E 80 00 20 */	blr 
