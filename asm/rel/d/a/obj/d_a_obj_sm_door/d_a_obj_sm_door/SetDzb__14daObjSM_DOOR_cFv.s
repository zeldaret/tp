lbl_80CD8A40:
/* 80CD8A40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD8A44  7C 08 02 A6 */	mflr r0
/* 80CD8A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD8A4C  7C 65 1B 78 */	mr r5, r3
/* 80CD8A50  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80CD8A54  28 04 00 00 */	cmplwi r4, 0
/* 80CD8A58  41 82 00 24 */	beq lbl_80CD8A7C
/* 80CD8A5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD8A60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD8A64  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CD8A68  4B 39 BF A1 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80CD8A6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CD8A70  41 82 00 0C */	beq lbl_80CD8A7C
/* 80CD8A74  38 60 00 00 */	li r3, 0
/* 80CD8A78  48 00 00 08 */	b lbl_80CD8A80
lbl_80CD8A7C:
/* 80CD8A7C  38 60 00 01 */	li r3, 1
lbl_80CD8A80:
/* 80CD8A80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD8A84  7C 08 03 A6 */	mtlr r0
/* 80CD8A88  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD8A8C  4E 80 00 20 */	blr 
