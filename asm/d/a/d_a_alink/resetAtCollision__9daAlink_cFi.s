lbl_800AA9DC:
/* 800AA9DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800AA9E0  7C 08 02 A6 */	mflr r0
/* 800AA9E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800AA9E8  39 61 00 20 */	addi r11, r1, 0x20
/* 800AA9EC  48 2B 77 ED */	bl _savegpr_28
/* 800AA9F0  7C 7C 1B 78 */	mr r28, r3
/* 800AA9F4  80 03 05 70 */	lwz r0, 0x570(r3)
/* 800AA9F8  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800AA9FC  41 82 00 A8 */	beq lbl_800AAAA4
/* 800AAA00  2C 04 00 00 */	cmpwi r4, 0
/* 800AAA04  41 82 00 5C */	beq lbl_800AAA60
/* 800AAA08  38 9C 12 2C */	addi r4, r28, 0x122c
/* 800AAA0C  48 02 6D E1 */	bl setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf
/* 800AAA10  2C 03 00 00 */	cmpwi r3, 0
/* 800AAA14  40 82 00 4C */	bne lbl_800AAA60
/* 800AAA18  7F 83 E3 78 */	mr r3, r28
/* 800AAA1C  38 9C 13 70 */	addi r4, r28, 0x1370
/* 800AAA20  48 02 6D CD */	bl setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf
/* 800AAA24  2C 03 00 00 */	cmpwi r3, 0
/* 800AAA28  40 82 00 38 */	bne lbl_800AAA60
/* 800AAA2C  7F 83 E3 78 */	mr r3, r28
/* 800AAA30  38 9C 14 B4 */	addi r4, r28, 0x14b4
/* 800AAA34  48 02 6D B9 */	bl setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf
/* 800AAA38  2C 03 00 00 */	cmpwi r3, 0
/* 800AAA3C  40 82 00 24 */	bne lbl_800AAA60
/* 800AAA40  7F 83 E3 78 */	mr r3, r28
/* 800AAA44  38 9C 10 F0 */	addi r4, r28, 0x10f0
/* 800AAA48  48 02 6D A5 */	bl setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf
/* 800AAA4C  2C 03 00 00 */	cmpwi r3, 0
/* 800AAA50  40 82 00 10 */	bne lbl_800AAA60
/* 800AAA54  7F 83 E3 78 */	mr r3, r28
/* 800AAA58  38 9C 0F B8 */	addi r4, r28, 0xfb8
/* 800AAA5C  48 02 6D 91 */	bl setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf
lbl_800AAA60:
/* 800AAA60  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 800AAA64  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 800AAA68  90 1C 05 70 */	stw r0, 0x570(r28)
/* 800AAA6C  3B A0 00 00 */	li r29, 0
/* 800AAA70  3B E0 00 00 */	li r31, 0
lbl_800AAA74:
/* 800AAA74  7F DC FA 14 */	add r30, r28, r31
/* 800AAA78  38 7E 12 2C */	addi r3, r30, 0x122c
/* 800AAA7C  4B FD 98 9D */	bl ResetAtHit__12dCcD_GObjInfFv
/* 800AAA80  80 1E 12 2C */	lwz r0, 0x122c(r30)
/* 800AAA84  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800AAA88  90 1E 12 2C */	stw r0, 0x122c(r30)
/* 800AAA8C  3B BD 00 01 */	addi r29, r29, 1
/* 800AAA90  2C 1D 00 03 */	cmpwi r29, 3
/* 800AAA94  3B FF 01 44 */	addi r31, r31, 0x144
/* 800AAA98  41 80 FF DC */	blt lbl_800AAA74
/* 800AAA9C  38 7C 0F B8 */	addi r3, r28, 0xfb8
/* 800AAAA0  4B FD 98 79 */	bl ResetAtHit__12dCcD_GObjInfFv
lbl_800AAAA4:
/* 800AAAA4  39 61 00 20 */	addi r11, r1, 0x20
/* 800AAAA8  48 2B 77 7D */	bl _restgpr_28
/* 800AAAAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800AAAB0  7C 08 03 A6 */	mtlr r0
/* 800AAAB4  38 21 00 20 */	addi r1, r1, 0x20
/* 800AAAB8  4E 80 00 20 */	blr 
