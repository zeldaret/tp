lbl_80CD5B84:
/* 80CD5B84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CD5B88  7C 08 02 A6 */	mflr r0
/* 80CD5B8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CD5B90  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CD5B94  7C 7F 1B 78 */	mr r31, r3
/* 80CD5B98  38 7F 10 F4 */	addi r3, r31, 0x10f4
/* 80CD5B9C  4B 46 FB 6C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80CD5BA0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CD5BA4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CD5BA8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CD5BAC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CD5BB0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CD5BB4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CD5BB8  38 81 00 14 */	addi r4, r1, 0x14
/* 80CD5BBC  48 00 00 CD */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz
/* 80CD5BC0  2C 03 00 00 */	cmpwi r3, 0
/* 80CD5BC4  41 82 00 0C */	beq lbl_80CD5BD0
/* 80CD5BC8  38 60 00 01 */	li r3, 1
/* 80CD5BCC  48 00 00 50 */	b lbl_80CD5C1C
lbl_80CD5BD0:
/* 80CD5BD0  38 7F 10 FC */	addi r3, r31, 0x10fc
/* 80CD5BD4  4B 46 FB 34 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80CD5BD8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CD5BDC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CD5BE0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CD5BE4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CD5BE8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CD5BEC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CD5BF0  38 81 00 08 */	addi r4, r1, 8
/* 80CD5BF4  48 00 00 95 */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz
/* 80CD5BF8  2C 03 00 00 */	cmpwi r3, 0
/* 80CD5BFC  41 82 00 1C */	beq lbl_80CD5C18
/* 80CD5C00  88 1F 10 C8 */	lbz r0, 0x10c8(r31)
/* 80CD5C04  7C 00 00 34 */	cntlzw r0, r0
/* 80CD5C08  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 80CD5C0C  98 1F 11 7A */	stb r0, 0x117a(r31)
/* 80CD5C10  38 60 00 01 */	li r3, 1
/* 80CD5C14  48 00 00 08 */	b lbl_80CD5C1C
lbl_80CD5C18:
/* 80CD5C18  38 60 00 00 */	li r3, 0
lbl_80CD5C1C:
/* 80CD5C1C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CD5C20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CD5C24  7C 08 03 A6 */	mtlr r0
/* 80CD5C28  38 21 00 30 */	addi r1, r1, 0x30
/* 80CD5C2C  4E 80 00 20 */	blr 
