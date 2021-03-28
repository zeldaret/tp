lbl_804869C4:
/* 804869C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804869C8  7C 08 02 A6 */	mflr r0
/* 804869CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804869D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804869D4  7C 7F 1B 78 */	mr r31, r3
/* 804869D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804869DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804869E0  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 804869E4  3C 80 80 48 */	lis r4, struct_80487388+0x0@ha
/* 804869E8  38 84 73 88 */	addi r4, r4, struct_80487388+0x0@l
/* 804869EC  38 84 00 25 */	addi r4, r4, 0x25
/* 804869F0  4B EE 1F A4 */	b strcmp
/* 804869F4  2C 03 00 00 */	cmpwi r3, 0
/* 804869F8  40 82 00 7C */	bne lbl_80486A74
/* 804869FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80486A00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80486A04  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80486A08  2C 00 00 04 */	cmpwi r0, 4
/* 80486A0C  40 82 00 68 */	bne lbl_80486A74
/* 80486A10  38 80 00 32 */	li r4, 0x32
/* 80486A14  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80486A18  7C 05 07 74 */	extsb r5, r0
/* 80486A1C  4B BA E9 44 */	b isSwitch__10dSv_info_cCFii
/* 80486A20  2C 03 00 00 */	cmpwi r3, 0
/* 80486A24  41 82 00 50 */	beq lbl_80486A74
/* 80486A28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80486A2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80486A30  38 80 00 33 */	li r4, 0x33
/* 80486A34  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80486A38  7C 05 07 74 */	extsb r5, r0
/* 80486A3C  4B BA E9 24 */	b isSwitch__10dSv_info_cCFii
/* 80486A40  2C 03 00 00 */	cmpwi r3, 0
/* 80486A44  41 82 00 30 */	beq lbl_80486A74
/* 80486A48  7F E3 FB 78 */	mr r3, r31
/* 80486A4C  4B FF F5 C5 */	bl getEvNo__10daSwhit0_cFv
/* 80486A50  7C 65 1B 78 */	mr r5, r3
/* 80486A54  7F E3 FB 78 */	mr r3, r31
/* 80486A58  A8 9F 07 56 */	lha r4, 0x756(r31)
/* 80486A5C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80486A60  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80486A64  38 E0 00 00 */	li r7, 0
/* 80486A68  39 00 00 01 */	li r8, 1
/* 80486A6C  4B B9 4C 10 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80486A70  48 00 00 2C */	b lbl_80486A9C
lbl_80486A74:
/* 80486A74  7F E3 FB 78 */	mr r3, r31
/* 80486A78  4B FF F5 99 */	bl getEvNo__10daSwhit0_cFv
/* 80486A7C  7C 64 1B 78 */	mr r4, r3
/* 80486A80  7F E3 FB 78 */	mr r3, r31
/* 80486A84  A8 BF 07 56 */	lha r5, 0x756(r31)
/* 80486A88  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80486A8C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80486A90  38 E0 00 01 */	li r7, 1
/* 80486A94  39 00 00 00 */	li r8, 0
/* 80486A98  4B B9 4E 48 */	b fopAcM_orderMapToolAutoNextEvent__FP10fopAc_ac_cUcsUsUsUs
lbl_80486A9C:
/* 80486A9C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80486AA0  60 00 00 02 */	ori r0, r0, 2
/* 80486AA4  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80486AA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80486AAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80486AB0  7C 08 03 A6 */	mtlr r0
/* 80486AB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80486AB8  4E 80 00 20 */	blr 
