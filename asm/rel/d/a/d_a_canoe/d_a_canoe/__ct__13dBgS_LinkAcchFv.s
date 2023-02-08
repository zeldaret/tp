lbl_804DAD68:
/* 804DAD68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DAD6C  7C 08 02 A6 */	mflr r0
/* 804DAD70  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DAD74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DAD78  7C 7F 1B 78 */	mr r31, r3
/* 804DAD7C  4B B9 B3 25 */	bl __ct__9dBgS_AcchFv
/* 804DAD80  3C 60 80 4E */	lis r3, __vt__13dBgS_LinkAcch@ha /* 0x804DD7B4@ha */
/* 804DAD84  38 63 D7 B4 */	addi r3, r3, __vt__13dBgS_LinkAcch@l /* 0x804DD7B4@l */
/* 804DAD88  90 7F 00 10 */	stw r3, 0x10(r31)
/* 804DAD8C  38 03 00 0C */	addi r0, r3, 0xc
/* 804DAD90  90 1F 00 14 */	stw r0, 0x14(r31)
/* 804DAD94  38 03 00 18 */	addi r0, r3, 0x18
/* 804DAD98  90 1F 00 24 */	stw r0, 0x24(r31)
/* 804DAD9C  38 7F 00 14 */	addi r3, r31, 0x14
/* 804DADA0  4B B9 E0 F9 */	bl SetLink__16dBgS_PolyPassChkFv
/* 804DADA4  7F E3 FB 78 */	mr r3, r31
/* 804DADA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DADAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DADB0  7C 08 03 A6 */	mtlr r0
/* 804DADB4  38 21 00 10 */	addi r1, r1, 0x10
/* 804DADB8  4E 80 00 20 */	blr 
