lbl_8008460C:
/* 8008460C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80084610  7C 08 02 A6 */	mflr r0
/* 80084614  90 01 00 14 */	stw r0, 0x14(r1)
/* 80084618  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8008461C  7C 7F 1B 78 */	mr r31, r3
/* 80084620  38 7F 00 2C */	addi r3, r31, 0x2c
/* 80084624  48 1E 02 C5 */	bl ClrHit__10cCcD_ObjCoFv
/* 80084628  38 7F 00 E8 */	addi r3, r31, 0xe8
/* 8008462C  4B FF F0 21 */	bl ClrActorInfo__22dCcD_GAtTgCoCommonBaseFv
/* 80084630  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 80084634  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80084638  90 1F 00 EC */	stw r0, 0xec(r31)
/* 8008463C  38 7F 00 E8 */	addi r3, r31, 0xe8
/* 80084640  4B FF F0 E5 */	bl SubtractEffCounter__22dCcD_GAtTgCoCommonBaseFv
/* 80084644  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80084648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8008464C  7C 08 03 A6 */	mtlr r0
/* 80084650  38 21 00 10 */	addi r1, r1, 0x10
/* 80084654  4E 80 00 20 */	blr 
