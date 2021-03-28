lbl_80B72C18:
/* 80B72C18  80 C3 09 6C */	lwz r6, 0x96c(r3)
/* 80B72C1C  28 06 00 00 */	cmplwi r6, 0
/* 80B72C20  41 82 00 FC */	beq lbl_80B72D1C
/* 80B72C24  80 03 09 70 */	lwz r0, 0x970(r3)
/* 80B72C28  28 00 00 00 */	cmplwi r0, 0
/* 80B72C2C  41 82 00 F0 */	beq lbl_80B72D1C
/* 80B72C30  88 03 0E 29 */	lbz r0, 0xe29(r3)
/* 80B72C34  28 00 00 00 */	cmplwi r0, 0
/* 80B72C38  41 82 00 AC */	beq lbl_80B72CE4
/* 80B72C3C  80 03 06 58 */	lwz r0, 0x658(r3)
/* 80B72C40  28 00 00 00 */	cmplwi r0, 0
/* 80B72C44  41 82 00 A0 */	beq lbl_80B72CE4
/* 80B72C48  A8 03 0C D6 */	lha r0, 0xcd6(r3)
/* 80B72C4C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80B72C50  7C 00 1E 70 */	srawi r0, r0, 3
/* 80B72C54  54 00 18 38 */	slwi r0, r0, 3
/* 80B72C58  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 80B72C5C  38 A4 9A 20 */	addi r5, r4, sincosTable___5JMath@l
/* 80B72C60  7C 05 04 2E */	lfsx f0, r5, r0
/* 80B72C64  3C 80 80 B7 */	lis r4, lit_4557@ha
/* 80B72C68  C0 44 4D 0C */	lfs f2, lit_4557@l(r4)
/* 80B72C6C  3C 80 80 B7 */	lis r4, lit_4184@ha
/* 80B72C70  C0 24 4D 00 */	lfs f1, lit_4184@l(r4)
/* 80B72C74  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B72C78  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B72C7C  D0 06 00 FC */	stfs f0, 0xfc(r6)
/* 80B72C80  A8 03 0C D4 */	lha r0, 0xcd4(r3)
/* 80B72C84  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B72C88  7C 05 04 2E */	lfsx f0, r5, r0
/* 80B72C8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B72C90  80 83 09 6C */	lwz r4, 0x96c(r3)
/* 80B72C94  D0 04 01 00 */	stfs f0, 0x100(r4)
/* 80B72C98  A8 03 0C D6 */	lha r0, 0xcd6(r3)
/* 80B72C9C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B72CA0  7C 05 04 2E */	lfsx f0, r5, r0
/* 80B72CA4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B72CA8  80 83 09 70 */	lwz r4, 0x970(r3)
/* 80B72CAC  D0 04 00 FC */	stfs f0, 0xfc(r4)
/* 80B72CB0  A8 03 0C D4 */	lha r0, 0xcd4(r3)
/* 80B72CB4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B72CB8  7C 05 04 2E */	lfsx f0, r5, r0
/* 80B72CBC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B72CC0  80 83 09 70 */	lwz r4, 0x970(r3)
/* 80B72CC4  D0 04 01 00 */	stfs f0, 0x100(r4)
/* 80B72CC8  38 00 00 01 */	li r0, 1
/* 80B72CCC  80 83 09 6C */	lwz r4, 0x96c(r3)
/* 80B72CD0  98 04 01 04 */	stb r0, 0x104(r4)
/* 80B72CD4  80 63 09 70 */	lwz r3, 0x970(r3)
/* 80B72CD8  98 03 01 04 */	stb r0, 0x104(r3)
/* 80B72CDC  38 60 00 01 */	li r3, 1
/* 80B72CE0  4E 80 00 20 */	blr 
lbl_80B72CE4:
/* 80B72CE4  88 03 0E 2A */	lbz r0, 0xe2a(r3)
/* 80B72CE8  28 00 00 00 */	cmplwi r0, 0
/* 80B72CEC  41 82 00 1C */	beq lbl_80B72D08
/* 80B72CF0  98 06 01 05 */	stb r0, 0x105(r6)
/* 80B72CF4  88 03 0E 2A */	lbz r0, 0xe2a(r3)
/* 80B72CF8  80 83 09 70 */	lwz r4, 0x970(r3)
/* 80B72CFC  98 04 01 05 */	stb r0, 0x105(r4)
/* 80B72D00  38 00 00 00 */	li r0, 0
/* 80B72D04  98 03 0E 2A */	stb r0, 0xe2a(r3)
lbl_80B72D08:
/* 80B72D08  38 00 00 00 */	li r0, 0
/* 80B72D0C  80 83 09 6C */	lwz r4, 0x96c(r3)
/* 80B72D10  98 04 01 04 */	stb r0, 0x104(r4)
/* 80B72D14  80 63 09 70 */	lwz r3, 0x970(r3)
/* 80B72D18  98 03 01 04 */	stb r0, 0x104(r3)
lbl_80B72D1C:
/* 80B72D1C  38 60 00 00 */	li r3, 0
/* 80B72D20  4E 80 00 20 */	blr 
