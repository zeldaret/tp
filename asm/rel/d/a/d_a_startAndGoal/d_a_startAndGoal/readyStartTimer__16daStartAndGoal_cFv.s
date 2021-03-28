lbl_80D4DB30:
/* 80D4DB30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4DB34  7C 08 02 A6 */	mflr r0
/* 80D4DB38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4DB3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4DB40  7C 7F 1B 78 */	mr r31, r3
/* 80D4DB44  88 03 0B 99 */	lbz r0, 0xb99(r3)
/* 80D4DB48  54 00 18 38 */	slwi r0, r0, 3
/* 80D4DB4C  3C 60 80 D5 */	lis r3, l_timerType@ha
/* 80D4DB50  38 63 DE CC */	addi r3, r3, l_timerType@l
/* 80D4DB54  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D4DB58  38 80 00 00 */	li r4, 0
/* 80D4DB5C  4B 2E 19 D0 */	b dComIfG_TimerStart__Fis
/* 80D4DB60  2C 03 00 00 */	cmpwi r3, 0
/* 80D4DB64  41 82 00 30 */	beq lbl_80D4DB94
/* 80D4DB68  38 00 00 01 */	li r0, 1
/* 80D4DB6C  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80D4DB70  3C 60 80 D5 */	lis r3, l_timerType@ha
/* 80D4DB74  38 63 DE CC */	addi r3, r3, l_timerType@l
/* 80D4DB78  88 1F 0B 99 */	lbz r0, 0xb99(r31)
/* 80D4DB7C  54 00 18 38 */	slwi r0, r0, 3
/* 80D4DB80  7C 63 02 14 */	add r3, r3, r0
/* 80D4DB84  88 03 00 05 */	lbz r0, 5(r3)
/* 80D4DB88  98 1F 0B 98 */	stb r0, 0xb98(r31)
/* 80D4DB8C  38 60 00 01 */	li r3, 1
/* 80D4DB90  48 00 00 08 */	b lbl_80D4DB98
lbl_80D4DB94:
/* 80D4DB94  38 60 00 00 */	li r3, 0
lbl_80D4DB98:
/* 80D4DB98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4DB9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4DBA0  7C 08 03 A6 */	mtlr r0
/* 80D4DBA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4DBA8  4E 80 00 20 */	blr 
