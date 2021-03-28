lbl_80486064:
/* 80486064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80486068  7C 08 02 A6 */	mflr r0
/* 8048606C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80486070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80486074  7C 7F 1B 78 */	mr r31, r3
/* 80486078  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8048607C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80486080  28 00 00 FE */	cmplwi r0, 0xfe
/* 80486084  40 82 00 34 */	bne lbl_804860B8
/* 80486088  4B FF FF 89 */	bl getEvNo__10daSwhit0_cFv
/* 8048608C  7C 65 1B 78 */	mr r5, r3
/* 80486090  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80486094  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80486098  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8048609C  3C 80 80 48 */	lis r4, struct_80487388+0x0@ha
/* 804860A0  38 84 73 88 */	addi r4, r4, struct_80487388+0x0@l
/* 804860A4  38 84 00 0A */	addi r4, r4, 0xa
/* 804860A8  38 C0 FF FF */	li r6, -1
/* 804860AC  4B BC 14 68 */	b getEventIdx__16dEvent_manager_cFPCcUcl
/* 804860B0  B0 7F 07 56 */	sth r3, 0x756(r31)
/* 804860B4  48 00 00 24 */	b lbl_804860D8
lbl_804860B8:
/* 804860B8  4B FF FF 59 */	bl getEvNo__10daSwhit0_cFv
/* 804860BC  7C 65 1B 78 */	mr r5, r3
/* 804860C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804860C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804860C8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804860CC  7F E4 FB 78 */	mr r4, r31
/* 804860D0  4B BC 15 C8 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 804860D4  B0 7F 07 56 */	sth r3, 0x756(r31)
lbl_804860D8:
/* 804860D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804860DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804860E0  7C 08 03 A6 */	mtlr r0
/* 804860E4  38 21 00 10 */	addi r1, r1, 0x10
/* 804860E8  4E 80 00 20 */	blr 
