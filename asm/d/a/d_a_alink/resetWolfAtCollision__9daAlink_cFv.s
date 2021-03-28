lbl_800AA714:
/* 800AA714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AA718  7C 08 02 A6 */	mflr r0
/* 800AA71C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AA720  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800AA724  93 C1 00 08 */	stw r30, 8(r1)
/* 800AA728  7C 7E 1B 78 */	mr r30, r3
/* 800AA72C  80 03 05 70 */	lwz r0, 0x570(r3)
/* 800AA730  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800AA734  41 82 00 A0 */	beq lbl_800AA7D4
/* 800AA738  38 9E 10 F0 */	addi r4, r30, 0x10f0
/* 800AA73C  48 02 70 B1 */	bl setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf
/* 800AA740  2C 03 00 00 */	cmpwi r3, 0
/* 800AA744  40 82 00 38 */	bne lbl_800AA77C
/* 800AA748  7F C3 F3 78 */	mr r3, r30
/* 800AA74C  38 9E 08 50 */	addi r4, r30, 0x850
/* 800AA750  48 02 70 9D */	bl setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf
/* 800AA754  2C 03 00 00 */	cmpwi r3, 0
/* 800AA758  40 82 00 24 */	bne lbl_800AA77C
/* 800AA75C  7F C3 F3 78 */	mr r3, r30
/* 800AA760  38 9E 09 8C */	addi r4, r30, 0x98c
/* 800AA764  48 02 70 89 */	bl setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf
/* 800AA768  2C 03 00 00 */	cmpwi r3, 0
/* 800AA76C  40 82 00 10 */	bne lbl_800AA77C
/* 800AA770  7F C3 F3 78 */	mr r3, r30
/* 800AA774  38 9E 0A C8 */	addi r4, r30, 0xac8
/* 800AA778  48 02 70 75 */	bl setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf
lbl_800AA77C:
/* 800AA77C  80 1E 10 54 */	lwz r0, 0x1054(r30)
/* 800AA780  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 800AA784  90 1E 10 54 */	stw r0, 0x1054(r30)
/* 800AA788  38 7E 10 F0 */	addi r3, r30, 0x10f0
/* 800AA78C  4B FD 9B 8D */	bl ResetAtHit__12dCcD_GObjInfFv
/* 800AA790  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800AA794  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 800AA798  90 1E 05 70 */	stw r0, 0x570(r30)
/* 800AA79C  3B FE 08 50 */	addi r31, r30, 0x850
/* 800AA7A0  3B C0 00 00 */	li r30, 0
lbl_800AA7A4:
/* 800AA7A4  80 1F 00 00 */	lwz r0, 0(r31)
/* 800AA7A8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800AA7AC  90 1F 00 00 */	stw r0, 0(r31)
/* 800AA7B0  7F E3 FB 78 */	mr r3, r31
/* 800AA7B4  4B FD 9B 65 */	bl ResetAtHit__12dCcD_GObjInfFv
/* 800AA7B8  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 800AA7BC  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 800AA7C0  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 800AA7C4  3B DE 00 01 */	addi r30, r30, 1
/* 800AA7C8  2C 1E 00 03 */	cmpwi r30, 3
/* 800AA7CC  3B FF 01 3C */	addi r31, r31, 0x13c
/* 800AA7D0  41 80 FF D4 */	blt lbl_800AA7A4
lbl_800AA7D4:
/* 800AA7D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800AA7D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800AA7DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AA7E0  7C 08 03 A6 */	mtlr r0
/* 800AA7E4  38 21 00 10 */	addi r1, r1, 0x10
/* 800AA7E8  4E 80 00 20 */	blr 
