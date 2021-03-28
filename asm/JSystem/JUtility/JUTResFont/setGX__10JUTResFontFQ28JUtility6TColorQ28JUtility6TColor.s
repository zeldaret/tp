lbl_802DF584:
/* 802DF584  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DF588  7C 08 02 A6 */	mflr r0
/* 802DF58C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DF590  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DF594  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802DF598  7C 9E 23 78 */	mr r30, r4
/* 802DF59C  7C BF 2B 78 */	mr r31, r5
/* 802DF5A0  80 04 00 00 */	lwz r0, 0(r4)
/* 802DF5A4  28 00 00 00 */	cmplwi r0, 0
/* 802DF5A8  40 82 00 28 */	bne lbl_802DF5D0
/* 802DF5AC  80 9F 00 00 */	lwz r4, 0(r31)
/* 802DF5B0  3C 04 00 01 */	addis r0, r4, 1
/* 802DF5B4  28 00 FF FF */	cmplwi r0, 0xffff
/* 802DF5B8  40 82 00 18 */	bne lbl_802DF5D0
/* 802DF5BC  81 83 00 00 */	lwz r12, 0(r3)
/* 802DF5C0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802DF5C4  7D 89 03 A6 */	mtctr r12
/* 802DF5C8  4E 80 04 21 */	bctrl 
/* 802DF5CC  48 00 01 E0 */	b lbl_802DF7AC
lbl_802DF5D0:
/* 802DF5D0  38 60 00 01 */	li r3, 1
/* 802DF5D4  48 07 E5 5D */	bl GXSetNumChans
/* 802DF5D8  38 60 00 02 */	li r3, 2
/* 802DF5DC  48 08 02 B5 */	bl GXSetNumTevStages
/* 802DF5E0  38 60 00 01 */	li r3, 1
/* 802DF5E4  48 07 C8 19 */	bl GXSetNumTexGens
/* 802DF5E8  38 60 00 00 */	li r3, 0
/* 802DF5EC  38 80 00 00 */	li r4, 0
/* 802DF5F0  38 A0 00 00 */	li r5, 0
/* 802DF5F4  38 C0 00 FF */	li r6, 0xff
/* 802DF5F8  48 08 00 FD */	bl GXSetTevOrder
/* 802DF5FC  38 60 00 04 */	li r3, 4
/* 802DF600  38 80 00 00 */	li r4, 0
/* 802DF604  38 A0 00 00 */	li r5, 0
/* 802DF608  38 C0 00 01 */	li r6, 1
/* 802DF60C  38 E0 00 00 */	li r7, 0
/* 802DF610  39 00 00 00 */	li r8, 0
/* 802DF614  39 20 00 02 */	li r9, 2
/* 802DF618  48 07 E5 55 */	bl GXSetChanCtrl
/* 802DF61C  80 1E 00 00 */	lwz r0, 0(r30)
/* 802DF620  90 01 00 0C */	stw r0, 0xc(r1)
/* 802DF624  38 60 00 01 */	li r3, 1
/* 802DF628  38 81 00 0C */	addi r4, r1, 0xc
/* 802DF62C  48 07 FD 51 */	bl GXSetTevColor
/* 802DF630  80 1F 00 00 */	lwz r0, 0(r31)
/* 802DF634  90 01 00 08 */	stw r0, 8(r1)
/* 802DF638  38 60 00 02 */	li r3, 2
/* 802DF63C  38 81 00 08 */	addi r4, r1, 8
/* 802DF640  48 07 FD 3D */	bl GXSetTevColor
/* 802DF644  38 60 00 00 */	li r3, 0
/* 802DF648  38 80 00 02 */	li r4, 2
/* 802DF64C  38 A0 00 04 */	li r5, 4
/* 802DF650  38 C0 00 08 */	li r6, 8
/* 802DF654  38 E0 00 0F */	li r7, 0xf
/* 802DF658  48 07 FB CD */	bl GXSetTevColorIn
/* 802DF65C  38 60 00 00 */	li r3, 0
/* 802DF660  38 80 00 01 */	li r4, 1
/* 802DF664  38 A0 00 02 */	li r5, 2
/* 802DF668  38 C0 00 04 */	li r6, 4
/* 802DF66C  38 E0 00 07 */	li r7, 7
/* 802DF670  48 07 FB F9 */	bl GXSetTevAlphaIn
/* 802DF674  38 60 00 00 */	li r3, 0
/* 802DF678  38 80 00 00 */	li r4, 0
/* 802DF67C  38 A0 00 00 */	li r5, 0
/* 802DF680  38 C0 00 00 */	li r6, 0
/* 802DF684  38 E0 00 01 */	li r7, 1
/* 802DF688  39 00 00 00 */	li r8, 0
/* 802DF68C  48 07 FC 21 */	bl GXSetTevColorOp
/* 802DF690  38 60 00 00 */	li r3, 0
/* 802DF694  38 80 00 00 */	li r4, 0
/* 802DF698  38 A0 00 00 */	li r5, 0
/* 802DF69C  38 C0 00 00 */	li r6, 0
/* 802DF6A0  38 E0 00 01 */	li r7, 1
/* 802DF6A4  39 00 00 00 */	li r8, 0
/* 802DF6A8  48 07 FC 6D */	bl GXSetTevAlphaOp
/* 802DF6AC  38 60 00 01 */	li r3, 1
/* 802DF6B0  38 80 00 FF */	li r4, 0xff
/* 802DF6B4  38 A0 00 FF */	li r5, 0xff
/* 802DF6B8  38 C0 00 04 */	li r6, 4
/* 802DF6BC  48 08 00 39 */	bl GXSetTevOrder
/* 802DF6C0  38 60 00 01 */	li r3, 1
/* 802DF6C4  38 80 00 0F */	li r4, 0xf
/* 802DF6C8  38 A0 00 00 */	li r5, 0
/* 802DF6CC  38 C0 00 0A */	li r6, 0xa
/* 802DF6D0  38 E0 00 0F */	li r7, 0xf
/* 802DF6D4  48 07 FB 51 */	bl GXSetTevColorIn
/* 802DF6D8  38 60 00 01 */	li r3, 1
/* 802DF6DC  38 80 00 07 */	li r4, 7
/* 802DF6E0  38 A0 00 00 */	li r5, 0
/* 802DF6E4  38 C0 00 05 */	li r6, 5
/* 802DF6E8  38 E0 00 07 */	li r7, 7
/* 802DF6EC  48 07 FB 7D */	bl GXSetTevAlphaIn
/* 802DF6F0  38 60 00 01 */	li r3, 1
/* 802DF6F4  38 80 00 00 */	li r4, 0
/* 802DF6F8  38 A0 00 00 */	li r5, 0
/* 802DF6FC  38 C0 00 00 */	li r6, 0
/* 802DF700  38 E0 00 01 */	li r7, 1
/* 802DF704  39 00 00 00 */	li r8, 0
/* 802DF708  48 07 FB A5 */	bl GXSetTevColorOp
/* 802DF70C  38 60 00 01 */	li r3, 1
/* 802DF710  38 80 00 00 */	li r4, 0
/* 802DF714  38 A0 00 00 */	li r5, 0
/* 802DF718  38 C0 00 00 */	li r6, 0
/* 802DF71C  38 E0 00 01 */	li r7, 1
/* 802DF720  39 00 00 00 */	li r8, 0
/* 802DF724  48 07 FB F1 */	bl GXSetTevAlphaOp
/* 802DF728  38 60 00 01 */	li r3, 1
/* 802DF72C  38 80 00 04 */	li r4, 4
/* 802DF730  38 A0 00 05 */	li r5, 5
/* 802DF734  38 C0 00 0F */	li r6, 0xf
/* 802DF738  48 08 04 B9 */	bl GXSetBlendMode
/* 802DF73C  38 60 00 00 */	li r3, 0
/* 802DF740  38 80 00 09 */	li r4, 9
/* 802DF744  38 A0 00 01 */	li r5, 1
/* 802DF748  38 C0 00 03 */	li r6, 3
/* 802DF74C  38 E0 00 00 */	li r7, 0
/* 802DF750  48 07 BE 75 */	bl GXSetVtxAttrFmt
/* 802DF754  38 60 00 00 */	li r3, 0
/* 802DF758  38 80 00 0B */	li r4, 0xb
/* 802DF75C  38 A0 00 01 */	li r5, 1
/* 802DF760  38 C0 00 05 */	li r6, 5
/* 802DF764  38 E0 00 00 */	li r7, 0
/* 802DF768  48 07 BE 5D */	bl GXSetVtxAttrFmt
/* 802DF76C  38 60 00 00 */	li r3, 0
/* 802DF770  38 80 00 0D */	li r4, 0xd
/* 802DF774  38 A0 00 01 */	li r5, 1
/* 802DF778  38 C0 00 02 */	li r6, 2
/* 802DF77C  38 E0 00 0F */	li r7, 0xf
/* 802DF780  48 07 BE 45 */	bl GXSetVtxAttrFmt
/* 802DF784  48 07 BE 09 */	bl GXClearVtxDesc
/* 802DF788  38 60 00 09 */	li r3, 9
/* 802DF78C  38 80 00 01 */	li r4, 1
/* 802DF790  48 07 B7 29 */	bl GXSetVtxDesc
/* 802DF794  38 60 00 0B */	li r3, 0xb
/* 802DF798  38 80 00 01 */	li r4, 1
/* 802DF79C  48 07 B7 1D */	bl GXSetVtxDesc
/* 802DF7A0  38 60 00 0D */	li r3, 0xd
/* 802DF7A4  38 80 00 01 */	li r4, 1
/* 802DF7A8  48 07 B7 11 */	bl GXSetVtxDesc
lbl_802DF7AC:
/* 802DF7AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DF7B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802DF7B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DF7B8  7C 08 03 A6 */	mtlr r0
/* 802DF7BC  38 21 00 20 */	addi r1, r1, 0x20
/* 802DF7C0  4E 80 00 20 */	blr 
