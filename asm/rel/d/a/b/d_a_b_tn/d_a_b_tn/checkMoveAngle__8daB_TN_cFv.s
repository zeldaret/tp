lbl_80622B60:
/* 80622B60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80622B64  7C 08 02 A6 */	mflr r0
/* 80622B68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80622B6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80622B70  93 C1 00 08 */	stw r30, 8(r1)
/* 80622B74  7C 7E 1B 78 */	mr r30, r3
/* 80622B78  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80622B7C  FC 20 00 50 */	fneg f1, f0
/* 80622B80  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80622B84  FC 40 00 50 */	fneg f2, f0
/* 80622B88  4B C4 4A ED */	bl cM_atan2s__Fff
/* 80622B8C  7C 7F 1B 78 */	mr r31, r3
/* 80622B90  7F C3 F3 78 */	mr r3, r30
/* 80622B94  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80622B98  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80622B9C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80622BA0  4B 9F 7B 71 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80622BA4  7C 1F 18 50 */	subf r0, r31, r3
/* 80622BA8  7C 03 07 34 */	extsh r3, r0
/* 80622BAC  4B D4 25 25 */	bl abs
/* 80622BB0  38 80 40 00 */	li r4, 0x4000
/* 80622BB4  7C 80 1A 78 */	xor r0, r4, r3
/* 80622BB8  7C 03 0E 70 */	srawi r3, r0, 1
/* 80622BBC  7C 00 20 38 */	and r0, r0, r4
/* 80622BC0  7C 00 18 50 */	subf r0, r0, r3
/* 80622BC4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80622BC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80622BCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80622BD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80622BD4  7C 08 03 A6 */	mtlr r0
/* 80622BD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80622BDC  4E 80 00 20 */	blr 
