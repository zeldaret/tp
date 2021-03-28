lbl_80658C18:
/* 80658C18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80658C1C  7C 08 02 A6 */	mflr r0
/* 80658C20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80658C24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80658C28  7C 7F 1B 78 */	mr r31, r3
/* 80658C2C  88 03 0C A8 */	lbz r0, 0xca8(r3)
/* 80658C30  28 00 00 00 */	cmplwi r0, 0
/* 80658C34  40 82 00 30 */	bne lbl_80658C64
/* 80658C38  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80658C3C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80658C40  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80658C44  4B 9C 1B 58 */	b fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80658C48  2C 03 60 00 */	cmpwi r3, 0x6000
/* 80658C4C  40 80 00 18 */	bge lbl_80658C64
/* 80658C50  2C 03 20 00 */	cmpwi r3, 0x2000
/* 80658C54  40 81 00 10 */	ble lbl_80658C64
/* 80658C58  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80658C5C  60 00 00 80 */	ori r0, r0, 0x80
/* 80658C60  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80658C64:
/* 80658C64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80658C68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80658C6C  7C 08 03 A6 */	mtlr r0
/* 80658C70  38 21 00 10 */	addi r1, r1, 0x10
/* 80658C74  4E 80 00 20 */	blr 
