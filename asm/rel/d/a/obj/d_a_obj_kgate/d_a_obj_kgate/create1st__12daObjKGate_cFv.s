lbl_80588BF8:
/* 80588BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80588BFC  7C 08 02 A6 */	mflr r0
/* 80588C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80588C04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80588C08  93 C1 00 08 */	stw r30, 8(r1)
/* 80588C0C  7C 7E 1B 78 */	mr r30, r3
/* 80588C10  3C 60 80 59 */	lis r3, l_gateBmdIdx@ha
/* 80588C14  3B E3 AB 30 */	addi r31, r3, l_gateBmdIdx@l
/* 80588C18  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80588C1C  54 00 87 3E */	rlwinm r0, r0, 0x10, 0x1c, 0x1f
/* 80588C20  98 1E 0B EC */	stb r0, 0xbec(r30)
/* 80588C24  88 1E 0B EC */	lbz r0, 0xbec(r30)
/* 80588C28  28 00 00 01 */	cmplwi r0, 1
/* 80588C2C  40 82 00 30 */	bne lbl_80588C5C
/* 80588C30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80588C34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80588C38  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80588C3C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80588C40  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80588C44  7C 05 07 74 */	extsb r5, r0
/* 80588C48  4B AA C7 18 */	b isSwitch__10dSv_info_cCFii
/* 80588C4C  2C 03 00 00 */	cmpwi r3, 0
/* 80588C50  41 82 00 0C */	beq lbl_80588C5C
/* 80588C54  38 60 00 05 */	li r3, 5
/* 80588C58  48 00 00 90 */	b lbl_80588CE8
lbl_80588C5C:
/* 80588C5C  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80588C60  88 1E 0B EC */	lbz r0, 0xbec(r30)
/* 80588C64  54 00 10 3A */	slwi r0, r0, 2
/* 80588C68  3C 80 80 59 */	lis r4, l_arcName@ha
/* 80588C6C  38 84 AD 44 */	addi r4, r4, l_arcName@l
/* 80588C70  7C 84 00 2E */	lwzx r4, r4, r0
/* 80588C74  4B AA 42 48 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80588C78  7C 60 1B 78 */	mr r0, r3
/* 80588C7C  2C 00 00 04 */	cmpwi r0, 4
/* 80588C80  40 82 00 64 */	bne lbl_80588CE4
/* 80588C84  88 1E 0B EC */	lbz r0, 0xbec(r30)
/* 80588C88  54 06 10 3A */	slwi r6, r0, 2
/* 80588C8C  38 7F 00 30 */	addi r3, r31, 0x30
/* 80588C90  7C E3 30 2E */	lwzx r7, r3, r6
/* 80588C94  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80588C98  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80588C9C  28 00 00 FF */	cmplwi r0, 0xff
/* 80588CA0  41 82 00 10 */	beq lbl_80588CB0
/* 80588CA4  38 7F 00 3C */	addi r3, r31, 0x3c
/* 80588CA8  7C 03 30 2E */	lwzx r0, r3, r6
/* 80588CAC  7C E7 02 14 */	add r7, r7, r0
lbl_80588CB0:
/* 80588CB0  7F C3 F3 78 */	mr r3, r30
/* 80588CB4  3C 80 80 59 */	lis r4, l_arcName@ha
/* 80588CB8  38 84 AD 44 */	addi r4, r4, l_arcName@l
/* 80588CBC  7C 84 30 2E */	lwzx r4, r4, r6
/* 80588CC0  38 BF 00 24 */	addi r5, r31, 0x24
/* 80588CC4  7C A5 30 2E */	lwzx r5, r5, r6
/* 80588CC8  38 C0 00 00 */	li r6, 0
/* 80588CCC  39 00 00 00 */	li r8, 0
/* 80588CD0  4B AE FA EC */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80588CD4  7C 60 1B 78 */	mr r0, r3
/* 80588CD8  2C 00 00 05 */	cmpwi r0, 5
/* 80588CDC  40 82 00 08 */	bne lbl_80588CE4
/* 80588CE0  48 00 00 08 */	b lbl_80588CE8
lbl_80588CE4:
/* 80588CE4  7C 03 03 78 */	mr r3, r0
lbl_80588CE8:
/* 80588CE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80588CEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80588CF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80588CF4  7C 08 03 A6 */	mtlr r0
/* 80588CF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80588CFC  4E 80 00 20 */	blr 
