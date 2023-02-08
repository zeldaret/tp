lbl_800843FC:
/* 800843FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80084400  7C 08 02 A6 */	mflr r0
/* 80084404  90 01 00 14 */	stw r0, 0x14(r1)
/* 80084408  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8008440C  7C 7F 1B 78 */	mr r31, r3
/* 80084410  38 7F 00 18 */	addi r3, r31, 0x18
/* 80084414  48 1E 04 9D */	bl ClrHit__10cCcD_ObjTgFv
/* 80084418  38 7F 00 9C */	addi r3, r31, 0x9c
/* 8008441C  4B FF F2 31 */	bl ClrActorInfo__22dCcD_GAtTgCoCommonBaseFv
/* 80084420  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 80084424  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80084428  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 8008442C  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 80084430  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80084434  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 80084438  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 8008443C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80084440  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 80084444  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80084448  4B FF F2 DD */	bl SubtractEffCounter__22dCcD_GAtTgCoCommonBaseFv
/* 8008444C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80084450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80084454  7C 08 03 A6 */	mtlr r0
/* 80084458  38 21 00 10 */	addi r1, r1, 0x10
/* 8008445C  4E 80 00 20 */	blr 
