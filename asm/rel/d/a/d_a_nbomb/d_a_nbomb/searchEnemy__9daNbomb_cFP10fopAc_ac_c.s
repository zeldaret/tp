lbl_804C6FD8:
/* 804C6FD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C6FDC  7C 08 02 A6 */	mflr r0
/* 804C6FE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C6FE4  39 61 00 30 */	addi r11, r1, 0x30
/* 804C6FE8  4B E9 B1 F5 */	bl _savegpr_29
/* 804C6FEC  7C 7D 1B 78 */	mr r29, r3
/* 804C6FF0  7C 9E 23 78 */	mr r30, r4
/* 804C6FF4  3C 60 80 4D */	lis r3, lit_3767@ha /* 0x804CC340@ha */
/* 804C6FF8  3B E3 C3 40 */	addi r31, r3, lit_3767@l /* 0x804CC340@l */
/* 804C6FFC  38 7D 0A 70 */	addi r3, r29, 0xa70
/* 804C7000  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804C7004  38 BD 0C 14 */	addi r5, r29, 0xc14
/* 804C7008  4B E7 FD 65 */	bl PSMTXMultVec
/* 804C700C  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 804C7010  70 00 00 05 */	andi. r0, r0, 5
/* 804C7014  41 82 00 90 */	beq lbl_804C70A4
/* 804C7018  C0 3D 0C 1C */	lfs f1, 0xc1c(r29)
/* 804C701C  C0 1D 0C 14 */	lfs f0, 0xc14(r29)
/* 804C7020  D0 01 00 08 */	stfs f0, 8(r1)
/* 804C7024  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804C7028  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804C702C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804C7030  38 61 00 08 */	addi r3, r1, 8
/* 804C7034  4B E8 01 05 */	bl PSVECSquareMag
/* 804C7038  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 804C703C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C7040  40 80 00 64 */	bge lbl_804C70A4
/* 804C7044  C0 1D 0C 18 */	lfs f0, 0xc18(r29)
/* 804C7048  FC 00 02 10 */	fabs f0, f0
/* 804C704C  FC 20 00 18 */	frsp f1, f0
/* 804C7050  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804C7054  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C7058  40 80 00 4C */	bge lbl_804C70A4
/* 804C705C  38 7D 0C 14 */	addi r3, r29, 0xc14
/* 804C7060  4B DA 00 C9 */	bl atan2sX_Z__4cXyzCFv
/* 804C7064  7C 63 07 34 */	extsh r3, r3
/* 804C7068  4B E9 E0 69 */	bl abs
/* 804C706C  2C 03 40 00 */	cmpwi r3, 0x4000
/* 804C7070  40 80 00 34 */	bge lbl_804C70A4
/* 804C7074  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804C7078  D0 1D 0C 18 */	stfs f0, 0xc18(r29)
/* 804C707C  38 61 00 14 */	addi r3, r1, 0x14
/* 804C7080  38 9D 0C 14 */	addi r4, r29, 0xc14
/* 804C7084  4B D9 FE C5 */	bl normalizeZP__4cXyzFv
/* 804C7088  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 804C708C  38 63 00 24 */	addi r3, r3, 0x24
/* 804C7090  38 9D 0C 14 */	addi r4, r29, 0xc14
/* 804C7094  7C 85 23 78 */	mr r5, r4
/* 804C7098  4B E7 FD B5 */	bl PSMTXMultVecSR
/* 804C709C  38 60 00 01 */	li r3, 1
/* 804C70A0  48 00 00 08 */	b lbl_804C70A8
lbl_804C70A4:
/* 804C70A4  38 60 00 00 */	li r3, 0
lbl_804C70A8:
/* 804C70A8  39 61 00 30 */	addi r11, r1, 0x30
/* 804C70AC  4B E9 B1 7D */	bl _restgpr_29
/* 804C70B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C70B4  7C 08 03 A6 */	mtlr r0
/* 804C70B8  38 21 00 30 */	addi r1, r1, 0x30
/* 804C70BC  4E 80 00 20 */	blr 
