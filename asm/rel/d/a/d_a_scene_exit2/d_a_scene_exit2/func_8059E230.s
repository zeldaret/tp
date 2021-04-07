lbl_8059E230:
/* 8059E230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059E234  7C 08 02 A6 */	mflr r0
/* 8059E238  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059E23C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059E240  93 C1 00 08 */	stw r30, 8(r1)
/* 8059E244  7C 7E 1B 78 */	mr r30, r3
/* 8059E248  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8059E24C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8059E250  40 82 00 1C */	bne lbl_8059E26C
/* 8059E254  28 1E 00 00 */	cmplwi r30, 0
/* 8059E258  41 82 00 08 */	beq lbl_8059E260
/* 8059E25C  4B A7 A9 09 */	bl __ct__10fopAc_ac_cFv
lbl_8059E260:
/* 8059E260  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8059E264  60 00 00 08 */	ori r0, r0, 8
/* 8059E268  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_8059E26C:
/* 8059E26C  38 7E 05 68 */	addi r3, r30, 0x568
/* 8059E270  3C 80 80 5A */	lis r4, l_arcName@ha /* 0x8059E858@ha */
/* 8059E274  38 84 E8 58 */	addi r4, r4, l_arcName@l /* 0x8059E858@l */
/* 8059E278  80 84 00 00 */	lwz r4, 0(r4)
/* 8059E27C  4B A8 EC 41 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8059E280  7C 7F 1B 78 */	mr r31, r3
/* 8059E284  2C 1F 00 04 */	cmpwi r31, 4
/* 8059E288  40 82 00 1C */	bne lbl_8059E2A4
/* 8059E28C  7F C3 F3 78 */	mr r3, r30
/* 8059E290  4B FF FF 21 */	bl Create__10daScExit_cFv
/* 8059E294  2C 03 00 00 */	cmpwi r3, 0
/* 8059E298  40 82 00 0C */	bne lbl_8059E2A4
/* 8059E29C  38 60 00 05 */	li r3, 5
/* 8059E2A0  48 00 00 08 */	b lbl_8059E2A8
lbl_8059E2A4:
/* 8059E2A4  7F E3 FB 78 */	mr r3, r31
lbl_8059E2A8:
/* 8059E2A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059E2AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059E2B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059E2B4  7C 08 03 A6 */	mtlr r0
/* 8059E2B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8059E2BC  4E 80 00 20 */	blr 
