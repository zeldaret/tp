lbl_80BAD30C:
/* 80BAD30C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAD310  7C 08 02 A6 */	mflr r0
/* 80BAD314  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAD318  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BAD31C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BAD320  7C 7F 1B 78 */	mr r31, r3
/* 80BAD324  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BAD328  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BAD32C  40 82 00 B4 */	bne lbl_80BAD3E0
/* 80BAD330  7F E0 FB 79 */	or. r0, r31, r31
/* 80BAD334  41 82 00 A0 */	beq lbl_80BAD3D4
/* 80BAD338  7C 1E 03 78 */	mr r30, r0
/* 80BAD33C  4B 4C B2 E8 */	b __ct__16dBgS_MoveBgActorFv
/* 80BAD340  3C 60 80 BB */	lis r3, __vt__11daObjBBox_c@ha
/* 80BAD344  38 03 D5 40 */	addi r0, r3, __vt__11daObjBBox_c@l
/* 80BAD348  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80BAD34C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BAD350  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BAD354  90 1E 05 C4 */	stw r0, 0x5c4(r30)
/* 80BAD358  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 80BAD35C  4B 4D 64 04 */	b __ct__10dCcD_GSttsFv
/* 80BAD360  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BAD364  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BAD368  90 7E 05 C4 */	stw r3, 0x5c4(r30)
/* 80BAD36C  38 03 00 20 */	addi r0, r3, 0x20
/* 80BAD370  90 1E 05 C8 */	stw r0, 0x5c8(r30)
/* 80BAD374  3B DE 05 E8 */	addi r30, r30, 0x5e8
/* 80BAD378  7F C3 F3 78 */	mr r3, r30
/* 80BAD37C  4B 4D 66 AC */	b __ct__12dCcD_GObjInfFv
/* 80BAD380  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BAD384  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BAD388  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BAD38C  3C 60 80 BB */	lis r3, __vt__8cM3dGAab@ha
/* 80BAD390  38 03 D5 34 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BAD394  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80BAD398  3C 60 80 BB */	lis r3, __vt__8cM3dGCyl@ha
/* 80BAD39C  38 03 D5 28 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80BAD3A0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BAD3A4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80BAD3A8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80BAD3AC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80BAD3B0  38 03 00 58 */	addi r0, r3, 0x58
/* 80BAD3B4  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BAD3B8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80BAD3BC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80BAD3C0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80BAD3C4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BAD3C8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BAD3CC  38 03 00 84 */	addi r0, r3, 0x84
/* 80BAD3D0  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80BAD3D4:
/* 80BAD3D4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BAD3D8  60 00 00 08 */	ori r0, r0, 8
/* 80BAD3DC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BAD3E0:
/* 80BAD3E0  7F E3 FB 78 */	mr r3, r31
/* 80BAD3E4  4B FF FA DD */	bl create1st__11daObjBBox_cFv
/* 80BAD3E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAD3EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BAD3F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAD3F4  7C 08 03 A6 */	mtlr r0
/* 80BAD3F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAD3FC  4E 80 00 20 */	blr 
