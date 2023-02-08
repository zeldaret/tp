lbl_80049FEC:
/* 80049FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80049FF0  7C 08 02 A6 */	mflr r0
/* 80049FF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80049FF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80049FFC  7C 7F 1B 78 */	mr r31, r3
/* 8004A000  48 31 1E CD */	bl GXFlush
/* 8004A004  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8004A008  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8004A00C  38 80 00 00 */	li r4, 0
/* 8004A010  48 31 62 3D */	bl GXLoadPosMtxImm
/* 8004A014  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8004A018  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8004A01C  38 80 00 00 */	li r4, 0
/* 8004A020  48 31 62 7D */	bl GXLoadNrmMtxImm
/* 8004A024  48 31 1B 49 */	bl GXInvalidateVtxCache
/* 8004A028  38 60 00 00 */	li r3, 0
/* 8004A02C  38 80 00 09 */	li r4, 9
/* 8004A030  38 A0 00 01 */	li r5, 1
/* 8004A034  38 C0 00 04 */	li r6, 4
/* 8004A038  38 E0 00 00 */	li r7, 0
/* 8004A03C  48 31 15 89 */	bl GXSetVtxAttrFmt
/* 8004A040  38 60 00 00 */	li r3, 0
/* 8004A044  38 80 00 0A */	li r4, 0xa
/* 8004A048  38 A0 00 00 */	li r5, 0
/* 8004A04C  38 C0 00 04 */	li r6, 4
/* 8004A050  38 E0 00 00 */	li r7, 0
/* 8004A054  48 31 15 71 */	bl GXSetVtxAttrFmt
/* 8004A058  38 60 00 00 */	li r3, 0
/* 8004A05C  38 80 00 0B */	li r4, 0xb
/* 8004A060  38 A0 00 01 */	li r5, 1
/* 8004A064  38 C0 00 05 */	li r6, 5
/* 8004A068  38 E0 00 00 */	li r7, 0
/* 8004A06C  48 31 15 59 */	bl GXSetVtxAttrFmt
/* 8004A070  38 60 00 00 */	li r3, 0
/* 8004A074  38 80 00 0D */	li r4, 0xd
/* 8004A078  38 A0 00 01 */	li r5, 1
/* 8004A07C  38 C0 00 04 */	li r6, 4
/* 8004A080  38 E0 00 00 */	li r7, 0
/* 8004A084  48 31 15 41 */	bl GXSetVtxAttrFmt
/* 8004A088  48 31 15 05 */	bl GXClearVtxDesc
/* 8004A08C  38 60 00 09 */	li r3, 9
/* 8004A090  38 80 00 01 */	li r4, 1
/* 8004A094  48 31 0E 25 */	bl GXSetVtxDesc
/* 8004A098  38 60 00 0A */	li r3, 0xa
/* 8004A09C  38 80 00 01 */	li r4, 1
/* 8004A0A0  48 31 0E 19 */	bl GXSetVtxDesc
/* 8004A0A4  38 60 00 0B */	li r3, 0xb
/* 8004A0A8  38 80 00 01 */	li r4, 1
/* 8004A0AC  48 31 0E 0D */	bl GXSetVtxDesc
/* 8004A0B0  38 60 00 0D */	li r3, 0xd
/* 8004A0B4  38 80 00 01 */	li r4, 1
/* 8004A0B8  48 31 0E 01 */	bl GXSetVtxDesc
/* 8004A0BC  7F E3 FB 78 */	mr r3, r31
/* 8004A0C0  48 23 4E 81 */	bl getDrawCount__14JPABaseEmitterCFv
/* 8004A0C4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8004A0C8  2C 00 00 02 */	cmpwi r0, 2
/* 8004A0CC  41 82 00 20 */	beq lbl_8004A0EC
/* 8004A0D0  40 80 00 24 */	bge lbl_8004A0F4
/* 8004A0D4  2C 00 00 01 */	cmpwi r0, 1
/* 8004A0D8  40 80 00 08 */	bge lbl_8004A0E0
/* 8004A0DC  48 00 00 18 */	b lbl_8004A0F4
lbl_8004A0E0:
/* 8004A0E0  7F E3 FB 78 */	mr r3, r31
/* 8004A0E4  4B FF FA DD */	bl drawFirst__FP14JPABaseEmitter
/* 8004A0E8  48 00 00 0C */	b lbl_8004A0F4
lbl_8004A0EC:
/* 8004A0EC  7F E3 FB 78 */	mr r3, r31
/* 8004A0F0  4B FF FB 55 */	bl drawSecond_light8__FP14JPABaseEmitter
lbl_8004A0F4:
/* 8004A0F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004A0F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004A0FC  7C 08 03 A6 */	mtlr r0
/* 8004A100  38 21 00 10 */	addi r1, r1, 0x10
/* 8004A104  4E 80 00 20 */	blr 
