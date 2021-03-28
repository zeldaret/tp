lbl_8045A0EC:
/* 8045A0EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045A0F0  7C 08 02 A6 */	mflr r0
/* 8045A0F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045A0F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045A0FC  7C 7F 1B 78 */	mr r31, r3
/* 8045A100  38 00 00 00 */	li r0, 0
/* 8045A104  98 03 0C C8 */	stb r0, 0xcc8(r3)
/* 8045A108  4B FF FC 35 */	bl initBaseMtx__9daBgObj_cFv
/* 8045A10C  88 1F 0C C8 */	lbz r0, 0xcc8(r31)
/* 8045A110  54 00 18 38 */	slwi r0, r0, 3
/* 8045A114  7C 7F 02 14 */	add r3, r31, r0
/* 8045A118  80 63 05 A8 */	lwz r3, 0x5a8(r3)
/* 8045A11C  38 03 00 24 */	addi r0, r3, 0x24
/* 8045A120  90 1F 05 04 */	stw r0, 0x504(r31)
/* 8045A124  7F E3 FB 78 */	mr r3, r31
/* 8045A128  88 9F 0C C8 */	lbz r4, 0xcc8(r31)
/* 8045A12C  4B FF FD E9 */	bl settingCullSizeBoxForCull__9daBgObj_cFi
/* 8045A130  3C 60 80 46 */	lis r3, lit_3873@ha
/* 8045A134  C0 03 CA 00 */	lfs f0, lit_3873@l(r3)
/* 8045A138  C0 3F 0C F0 */	lfs f1, 0xcf0(r31)
/* 8045A13C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8045A140  41 82 00 08 */	beq lbl_8045A148
/* 8045A144  D0 3F 05 20 */	stfs f1, 0x520(r31)
lbl_8045A148:
/* 8045A148  38 60 00 01 */	li r3, 1
/* 8045A14C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045A150  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045A154  7C 08 03 A6 */	mtlr r0
/* 8045A158  38 21 00 10 */	addi r1, r1, 0x10
/* 8045A15C  4E 80 00 20 */	blr 
