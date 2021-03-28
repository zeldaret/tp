lbl_80D12C48:
/* 80D12C48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D12C4C  7C 08 02 A6 */	mflr r0
/* 80D12C50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D12C54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D12C58  7C 7F 1B 78 */	mr r31, r3
/* 80D12C5C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D12C60  54 00 05 BE */	clrlwi r0, r0, 0x16
/* 80D12C64  B0 03 05 74 */	sth r0, 0x574(r3)
/* 80D12C68  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D12C6C  54 00 B5 BE */	rlwinm r0, r0, 0x16, 0x16, 0x1f
/* 80D12C70  B0 03 05 76 */	sth r0, 0x576(r3)
/* 80D12C74  4B FF FF 45 */	bl initBaseMtx__12daObjTMoon_cFv
/* 80D12C78  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D12C7C  38 03 00 24 */	addi r0, r3, 0x24
/* 80D12C80  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80D12C84  38 60 00 01 */	li r3, 1
/* 80D12C88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D12C8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D12C90  7C 08 03 A6 */	mtlr r0
/* 80D12C94  38 21 00 10 */	addi r1, r1, 0x10
/* 80D12C98  4E 80 00 20 */	blr 
