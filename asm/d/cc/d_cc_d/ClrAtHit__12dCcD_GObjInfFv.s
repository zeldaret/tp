lbl_8008426C:
/* 8008426C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80084270  7C 08 02 A6 */	mflr r0
/* 80084274  90 01 00 14 */	stw r0, 0x14(r1)
/* 80084278  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8008427C  7C 7F 1B 78 */	mr r31, r3
/* 80084280  48 1E 05 E9 */	bl ClrHit__10cCcD_ObjAtFv
/* 80084284  38 7F 00 58 */	addi r3, r31, 0x58
/* 80084288  4B FF F3 C5 */	bl ClrActorInfo__22dCcD_GAtTgCoCommonBaseFv
/* 8008428C  80 1F 00 5C */	lwz r0, 0x5c(r31)
/* 80084290  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80084294  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 80084298  80 1F 00 5C */	lwz r0, 0x5c(r31)
/* 8008429C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800842A0  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 800842A4  38 7F 00 58 */	addi r3, r31, 0x58
/* 800842A8  4B FF F4 7D */	bl SubtractEffCounter__22dCcD_GAtTgCoCommonBaseFv
/* 800842AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800842B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800842B4  7C 08 03 A6 */	mtlr r0
/* 800842B8  38 21 00 10 */	addi r1, r1, 0x10
/* 800842BC  4E 80 00 20 */	blr 
