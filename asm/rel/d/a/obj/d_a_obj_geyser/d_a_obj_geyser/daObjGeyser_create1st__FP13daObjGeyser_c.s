lbl_80BF8D98:
/* 80BF8D98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF8D9C  7C 08 02 A6 */	mflr r0
/* 80BF8DA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF8DA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF8DA8  93 C1 00 08 */	stw r30, 8(r1)
/* 80BF8DAC  7C 7F 1B 78 */	mr r31, r3
/* 80BF8DB0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BF8DB4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BF8DB8  40 82 00 B0 */	bne lbl_80BF8E68
/* 80BF8DBC  7F E0 FB 79 */	or. r0, r31, r31
/* 80BF8DC0  41 82 00 9C */	beq lbl_80BF8E5C
/* 80BF8DC4  7C 1E 03 78 */	mr r30, r0
/* 80BF8DC8  4B 47 F8 5D */	bl __ct__16dBgS_MoveBgActorFv
/* 80BF8DCC  3C 60 80 C0 */	lis r3, __vt__13daObjGeyser_c@ha /* 0x80BF9218@ha */
/* 80BF8DD0  38 03 92 18 */	addi r0, r3, __vt__13daObjGeyser_c@l /* 0x80BF9218@l */
/* 80BF8DD4  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80BF8DD8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BF8DDC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BF8DE0  90 1E 05 C4 */	stw r0, 0x5c4(r30)
/* 80BF8DE4  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 80BF8DE8  4B 48 A9 79 */	bl __ct__10dCcD_GSttsFv
/* 80BF8DEC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BF8DF0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BF8DF4  90 7E 05 C4 */	stw r3, 0x5c4(r30)
/* 80BF8DF8  38 03 00 20 */	addi r0, r3, 0x20
/* 80BF8DFC  90 1E 05 C8 */	stw r0, 0x5c8(r30)
/* 80BF8E00  3B DE 05 E8 */	addi r30, r30, 0x5e8
/* 80BF8E04  7F C3 F3 78 */	mr r3, r30
/* 80BF8E08  4B 48 AC 21 */	bl __ct__12dCcD_GObjInfFv
/* 80BF8E0C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BF8E10  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BF8E14  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BF8E18  3C 60 80 C0 */	lis r3, __vt__8cM3dGAab@ha /* 0x80BF9200@ha */
/* 80BF8E1C  38 03 92 00 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BF9200@l */
/* 80BF8E20  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80BF8E24  38 7E 01 24 */	addi r3, r30, 0x124
/* 80BF8E28  4B 67 61 61 */	bl __ct__8cM3dGCpsFv
/* 80BF8E2C  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha /* 0x803C3608@ha */
/* 80BF8E30  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l /* 0x803C3608@l */
/* 80BF8E34  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80BF8E38  38 03 00 58 */	addi r0, r3, 0x58
/* 80BF8E3C  90 1E 01 3C */	stw r0, 0x13c(r30)
/* 80BF8E40  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha /* 0x803AC170@ha */
/* 80BF8E44  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l /* 0x803AC170@l */
/* 80BF8E48  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80BF8E4C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BF8E50  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BF8E54  38 03 00 84 */	addi r0, r3, 0x84
/* 80BF8E58  90 1E 01 3C */	stw r0, 0x13c(r30)
lbl_80BF8E5C:
/* 80BF8E5C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BF8E60  60 00 00 08 */	ori r0, r0, 8
/* 80BF8E64  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BF8E68:
/* 80BF8E68  7F E3 FB 78 */	mr r3, r31
/* 80BF8E6C  4B FF E3 09 */	bl create1st__13daObjGeyser_cFv
/* 80BF8E70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF8E74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BF8E78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF8E7C  7C 08 03 A6 */	mtlr r0
/* 80BF8E80  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF8E84  4E 80 00 20 */	blr 
