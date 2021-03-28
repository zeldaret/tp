lbl_80478C18:
/* 80478C18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80478C1C  7C 08 02 A6 */	mflr r0
/* 80478C20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80478C24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80478C28  7C 7F 1B 78 */	mr r31, r3
/* 80478C2C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80478C30  D0 03 0D F8 */	stfs f0, 0xdf8(r3)
/* 80478C34  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80478C38  D0 03 0D FC */	stfs f0, 0xdfc(r3)
/* 80478C3C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80478C40  D0 03 0E 00 */	stfs f0, 0xe00(r3)
/* 80478C44  38 7F 0A 28 */	addi r3, r31, 0xa28
/* 80478C48  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80478C4C  4B DF 69 FC */	b SetC__8cM3dGSphFRC4cXyz
/* 80478C50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80478C54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80478C58  38 63 23 3C */	addi r3, r3, 0x233c
/* 80478C5C  38 9F 09 04 */	addi r4, r31, 0x904
/* 80478C60  4B DE BF 48 */	b Set__4cCcSFP8cCcD_Obj
/* 80478C64  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 80478C68  4B C0 B7 F8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80478C6C  28 03 00 00 */	cmplwi r3, 0
/* 80478C70  41 82 00 38 */	beq lbl_80478CA8
/* 80478C74  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 80478C78  4B C0 B8 80 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80478C7C  28 03 00 00 */	cmplwi r3, 0
/* 80478C80  41 82 00 28 */	beq lbl_80478CA8
/* 80478C84  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 80478C88  4B C0 B8 F4 */	b GetTgHitObjSe__12dCcD_GObjInfFv
/* 80478C8C  38 80 00 01 */	li r4, 1
/* 80478C90  4B C0 B9 20 */	b getHitSeID__12dCcD_GObjInfFUci
/* 80478C94  7C 64 1B 78 */	mr r4, r3
/* 80478C98  38 7F 0D 88 */	addi r3, r31, 0xd88
/* 80478C9C  38 A0 00 02 */	li r5, 2
/* 80478CA0  38 C0 00 00 */	li r6, 0
/* 80478CA4  4B E4 58 00 */	b startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
lbl_80478CA8:
/* 80478CA8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80478CAC  7C 03 07 74 */	extsb r3, r0
/* 80478CB0  4B BB 43 BC */	b dComIfGp_getReverb__Fi
/* 80478CB4  7C 65 1B 78 */	mr r5, r3
/* 80478CB8  38 7F 0D 88 */	addi r3, r31, 0xd88
/* 80478CBC  38 80 00 00 */	li r4, 0
/* 80478CC0  81 9F 0D 98 */	lwz r12, 0xd98(r31)
/* 80478CC4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80478CC8  7D 89 03 A6 */	mtctr r12
/* 80478CCC  4E 80 04 21 */	bctrl 
/* 80478CD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80478CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80478CD8  7C 08 03 A6 */	mtlr r0
/* 80478CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80478CE0  4E 80 00 20 */	blr 
