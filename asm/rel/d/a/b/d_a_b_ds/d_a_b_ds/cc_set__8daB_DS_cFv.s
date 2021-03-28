lbl_805D951C:
/* 805D951C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 805D9520  7C 08 02 A6 */	mflr r0
/* 805D9524  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 805D9528  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 805D952C  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 805D9530  39 61 00 A0 */	addi r11, r1, 0xa0
/* 805D9534  4B D8 8C 80 */	b _savegpr_19
/* 805D9538  7C 7E 1B 78 */	mr r30, r3
/* 805D953C  3C 60 80 5E */	lis r3, lit_1109@ha
/* 805D9540  3B A3 DA 70 */	addi r29, r3, lit_1109@l
/* 805D9544  3C 60 80 5E */	lis r3, lit_3932@ha
/* 805D9548  3B E3 CA 54 */	addi r31, r3, lit_3932@l
/* 805D954C  88 1D 07 50 */	lbz r0, 0x750(r29)
/* 805D9550  7C 00 07 75 */	extsb. r0, r0
/* 805D9554  40 82 01 30 */	bne lbl_805D9684
/* 805D9558  C0 3F 06 04 */	lfs f1, 0x604(r31)
/* 805D955C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 805D9560  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D9564  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805D9568  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805D956C  D0 3D 07 84 */	stfs f1, 0x784(r29)
/* 805D9570  38 7D 07 84 */	addi r3, r29, 0x784
/* 805D9574  D0 03 00 04 */	stfs f0, 4(r3)
/* 805D9578  D0 03 00 08 */	stfs f0, 8(r3)
/* 805D957C  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha
/* 805D9580  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 805D9584  38 BD 07 44 */	addi r5, r29, 0x744
/* 805D9588  4B FF 1C 31 */	bl __register_global_object
/* 805D958C  C0 5F 02 F0 */	lfs f2, 0x2f0(r31)
/* 805D9590  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 805D9594  C0 3F 01 78 */	lfs f1, 0x178(r31)
/* 805D9598  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 805D959C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D95A0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805D95A4  38 7D 07 84 */	addi r3, r29, 0x784
/* 805D95A8  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 805D95AC  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 805D95B0  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 805D95B4  38 63 00 0C */	addi r3, r3, 0xc
/* 805D95B8  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha
/* 805D95BC  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 805D95C0  38 BD 07 54 */	addi r5, r29, 0x754
/* 805D95C4  4B FF 1B F5 */	bl __register_global_object
/* 805D95C8  C0 5F 03 F4 */	lfs f2, 0x3f4(r31)
/* 805D95CC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 805D95D0  C0 3F 06 08 */	lfs f1, 0x608(r31)
/* 805D95D4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 805D95D8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D95DC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805D95E0  38 7D 07 84 */	addi r3, r29, 0x784
/* 805D95E4  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 805D95E8  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 805D95EC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 805D95F0  38 63 00 18 */	addi r3, r3, 0x18
/* 805D95F4  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha
/* 805D95F8  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 805D95FC  38 BD 07 60 */	addi r5, r29, 0x760
/* 805D9600  4B FF 1B B9 */	bl __register_global_object
/* 805D9604  C0 5F 06 0C */	lfs f2, 0x60c(r31)
/* 805D9608  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805D960C  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 805D9610  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805D9614  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D9618  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805D961C  38 7D 07 84 */	addi r3, r29, 0x784
/* 805D9620  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 805D9624  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 805D9628  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 805D962C  38 63 00 24 */	addi r3, r3, 0x24
/* 805D9630  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha
/* 805D9634  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 805D9638  38 BD 07 6C */	addi r5, r29, 0x76c
/* 805D963C  4B FF 1B 7D */	bl __register_global_object
/* 805D9640  C0 5F 02 D8 */	lfs f2, 0x2d8(r31)
/* 805D9644  D0 41 00 08 */	stfs f2, 8(r1)
/* 805D9648  C0 3F 02 CC */	lfs f1, 0x2cc(r31)
/* 805D964C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805D9650  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D9654  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805D9658  38 7D 07 84 */	addi r3, r29, 0x784
/* 805D965C  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 805D9660  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 805D9664  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 805D9668  38 63 00 30 */	addi r3, r3, 0x30
/* 805D966C  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha
/* 805D9670  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 805D9674  38 BD 07 78 */	addi r5, r29, 0x778
/* 805D9678  4B FF 1B 41 */	bl __register_global_object
/* 805D967C  38 00 00 01 */	li r0, 1
/* 805D9680  98 1D 07 50 */	stb r0, 0x750(r29)
lbl_805D9684:
/* 805D9684  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D9688  83 83 00 04 */	lwz r28, 4(r3)
/* 805D968C  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 805D9690  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805D9694  38 63 01 20 */	addi r3, r3, 0x120
/* 805D9698  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805D969C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805D96A0  4B D6 CE 10 */	b PSMTXCopy
/* 805D96A4  C0 1F 06 10 */	lfs f0, 0x610(r31)
/* 805D96A8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805D96AC  C0 1F 06 14 */	lfs f0, 0x614(r31)
/* 805D96B0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805D96B4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D96B8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805D96BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805D96C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805D96C4  38 81 00 50 */	addi r4, r1, 0x50
/* 805D96C8  38 A1 00 44 */	addi r5, r1, 0x44
/* 805D96CC  4B D6 D6 A0 */	b PSMTXMultVec
/* 805D96D0  38 7E 0B E8 */	addi r3, r30, 0xbe8
/* 805D96D4  38 81 00 44 */	addi r4, r1, 0x44
/* 805D96D8  4B C9 5F 70 */	b SetC__8cM3dGSphFRC4cXyz
/* 805D96DC  38 7E 0B E8 */	addi r3, r30, 0xbe8
/* 805D96E0  C0 3F 04 F4 */	lfs f1, 0x4f4(r31)
/* 805D96E4  4B C9 60 24 */	b SetR__8cM3dGSphFf
/* 805D96E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D96EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D96F0  3B 63 23 3C */	addi r27, r3, 0x233c
/* 805D96F4  7F 63 DB 78 */	mr r3, r27
/* 805D96F8  38 9E 0A C4 */	addi r4, r30, 0xac4
/* 805D96FC  4B C8 B4 AC */	b Set__4cCcSFP8cCcD_Obj
/* 805D9700  3A 60 00 00 */	li r19, 0
/* 805D9704  3B 40 00 00 */	li r26, 0
/* 805D9708  3B 20 00 00 */	li r25, 0
/* 805D970C  3B 00 00 00 */	li r24, 0
/* 805D9710  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805D9714  3A C3 D4 70 */	addi r22, r3, now__14mDoMtx_stack_c@l
/* 805D9718  3C 60 80 5E */	lis r3, head_setRdt@ha
/* 805D971C  3A E3 D9 24 */	addi r23, r3, head_setRdt@l
lbl_805D9720:
/* 805D9720  38 7D 07 84 */	addi r3, r29, 0x784
/* 805D9724  7C 63 C2 14 */	add r3, r3, r24
/* 805D9728  C0 03 00 00 */	lfs f0, 0(r3)
/* 805D972C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805D9730  C0 03 00 04 */	lfs f0, 4(r3)
/* 805D9734  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805D9738  C0 03 00 08 */	lfs f0, 8(r3)
/* 805D973C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805D9740  7E C3 B3 78 */	mr r3, r22
/* 805D9744  38 81 00 50 */	addi r4, r1, 0x50
/* 805D9748  38 A1 00 44 */	addi r5, r1, 0x44
/* 805D974C  4B D6 D6 20 */	b PSMTXMultVec
/* 805D9750  7F F7 CC 2E */	lfsx f31, r23, r25
/* 805D9754  7E 9E D2 14 */	add r20, r30, r26
/* 805D9758  3A B4 0D 20 */	addi r21, r20, 0xd20
/* 805D975C  7E A3 AB 78 */	mr r3, r21
/* 805D9760  38 81 00 44 */	addi r4, r1, 0x44
/* 805D9764  4B C9 5E E4 */	b SetC__8cM3dGSphFRC4cXyz
/* 805D9768  7E A3 AB 78 */	mr r3, r21
/* 805D976C  FC 20 F8 90 */	fmr f1, f31
/* 805D9770  4B C9 5F 98 */	b SetR__8cM3dGSphFf
/* 805D9774  7F 63 DB 78 */	mr r3, r27
/* 805D9778  38 94 0B FC */	addi r4, r20, 0xbfc
/* 805D977C  4B C8 B4 2C */	b Set__4cCcSFP8cCcD_Obj
/* 805D9780  3A 73 00 01 */	addi r19, r19, 1
/* 805D9784  2C 13 00 05 */	cmpwi r19, 5
/* 805D9788  3B 5A 01 38 */	addi r26, r26, 0x138
/* 805D978C  3B 39 00 04 */	addi r25, r25, 4
/* 805D9790  3B 18 00 0C */	addi r24, r24, 0xc
/* 805D9794  41 80 FF 8C */	blt lbl_805D9720
/* 805D9798  88 1E 08 4F */	lbz r0, 0x84f(r30)
/* 805D979C  28 00 00 03 */	cmplwi r0, 3
/* 805D97A0  40 80 00 78 */	bge lbl_805D9818
/* 805D97A4  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 805D97A8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805D97AC  1C 00 00 30 */	mulli r0, r0, 0x30
/* 805D97B0  7C 63 02 14 */	add r3, r3, r0
/* 805D97B4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805D97B8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805D97BC  4B D6 CC F4 */	b PSMTXCopy
/* 805D97C0  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 805D97C4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805D97C8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D97CC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805D97D0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805D97D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805D97D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805D97DC  38 81 00 50 */	addi r4, r1, 0x50
/* 805D97E0  38 A1 00 44 */	addi r5, r1, 0x44
/* 805D97E4  4B D6 D5 88 */	b PSMTXMultVec
/* 805D97E8  38 7E 2A 60 */	addi r3, r30, 0x2a60
/* 805D97EC  38 81 00 44 */	addi r4, r1, 0x44
/* 805D97F0  4B C9 59 EC */	b SetC__8cM3dGCylFRC4cXyz
/* 805D97F4  38 7E 2A 60 */	addi r3, r30, 0x2a60
/* 805D97F8  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 805D97FC  4B C9 59 FC */	b SetH__8cM3dGCylFf
/* 805D9800  38 7E 2A 60 */	addi r3, r30, 0x2a60
/* 805D9804  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 805D9808  4B C9 59 F8 */	b SetR__8cM3dGCylFf
/* 805D980C  7F 63 DB 78 */	mr r3, r27
/* 805D9810  38 9E 29 3C */	addi r4, r30, 0x293c
/* 805D9814  4B C8 B3 94 */	b Set__4cCcSFP8cCcD_Obj
lbl_805D9818:
/* 805D9818  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 805D981C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805D9820  38 63 00 90 */	addi r3, r3, 0x90
/* 805D9824  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805D9828  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805D982C  4B D6 CC 84 */	b PSMTXCopy
/* 805D9830  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805D9834  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l
/* 805D9838  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 805D983C  D0 1E 07 3C */	stfs f0, 0x73c(r30)
/* 805D9840  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 805D9844  D0 1E 07 40 */	stfs f0, 0x740(r30)
/* 805D9848  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 805D984C  D0 1E 07 44 */	stfs f0, 0x744(r30)
/* 805D9850  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 805D9854  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805D9858  38 63 02 10 */	addi r3, r3, 0x210
/* 805D985C  7F A4 EB 78 */	mr r4, r29
/* 805D9860  4B D6 CC 50 */	b PSMTXCopy
/* 805D9864  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 805D9868  D0 1E 07 60 */	stfs f0, 0x760(r30)
/* 805D986C  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 805D9870  D0 1E 07 64 */	stfs f0, 0x764(r30)
/* 805D9874  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 805D9878  D0 1E 07 68 */	stfs f0, 0x768(r30)
/* 805D987C  80 1E 06 80 */	lwz r0, 0x680(r30)
/* 805D9880  2C 00 00 01 */	cmpwi r0, 1
/* 805D9884  40 82 00 58 */	bne lbl_805D98DC
/* 805D9888  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 805D988C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805D9890  C0 1F 02 CC */	lfs f0, 0x2cc(r31)
/* 805D9894  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805D9898  C0 1F 02 44 */	lfs f0, 0x244(r31)
/* 805D989C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805D98A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805D98A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805D98A8  38 81 00 50 */	addi r4, r1, 0x50
/* 805D98AC  38 A1 00 44 */	addi r5, r1, 0x44
/* 805D98B0  4B D6 D4 BC */	b PSMTXMultVec
/* 805D98B4  38 7E 2B 9C */	addi r3, r30, 0x2b9c
/* 805D98B8  38 81 00 44 */	addi r4, r1, 0x44
/* 805D98BC  4B C9 59 20 */	b SetC__8cM3dGCylFRC4cXyz
/* 805D98C0  38 7E 2B 9C */	addi r3, r30, 0x2b9c
/* 805D98C4  C0 3F 02 EC */	lfs f1, 0x2ec(r31)
/* 805D98C8  4B C9 59 30 */	b SetH__8cM3dGCylFf
/* 805D98CC  38 7E 2B 9C */	addi r3, r30, 0x2b9c
/* 805D98D0  C0 3F 06 18 */	lfs f1, 0x618(r31)
/* 805D98D4  4B C9 59 2C */	b SetR__8cM3dGCylFf
/* 805D98D8  48 00 00 54 */	b lbl_805D992C
lbl_805D98DC:
/* 805D98DC  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 805D98E0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805D98E4  C0 1F 02 CC */	lfs f0, 0x2cc(r31)
/* 805D98E8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805D98EC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805D98F0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805D98F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805D98F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805D98FC  38 81 00 50 */	addi r4, r1, 0x50
/* 805D9900  38 A1 00 44 */	addi r5, r1, 0x44
/* 805D9904  4B D6 D4 68 */	b PSMTXMultVec
/* 805D9908  38 7E 2B 9C */	addi r3, r30, 0x2b9c
/* 805D990C  38 81 00 44 */	addi r4, r1, 0x44
/* 805D9910  4B C9 58 CC */	b SetC__8cM3dGCylFRC4cXyz
/* 805D9914  38 7E 2B 9C */	addi r3, r30, 0x2b9c
/* 805D9918  C0 3F 02 EC */	lfs f1, 0x2ec(r31)
/* 805D991C  4B C9 58 DC */	b SetH__8cM3dGCylFf
/* 805D9920  38 7E 2B 9C */	addi r3, r30, 0x2b9c
/* 805D9924  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 805D9928  4B C9 58 D8 */	b SetR__8cM3dGCylFf
lbl_805D992C:
/* 805D992C  7F 63 DB 78 */	mr r3, r27
/* 805D9930  38 9E 2A 78 */	addi r4, r30, 0x2a78
/* 805D9934  4B C8 B2 74 */	b Set__4cCcSFP8cCcD_Obj
/* 805D9938  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 805D993C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805D9940  38 63 03 C0 */	addi r3, r3, 0x3c0
/* 805D9944  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805D9948  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805D994C  4B D6 CB 64 */	b PSMTXCopy
/* 805D9950  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 805D9954  D0 1E 07 78 */	stfs f0, 0x778(r30)
/* 805D9958  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 805D995C  D0 1E 07 7C */	stfs f0, 0x77c(r30)
/* 805D9960  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 805D9964  D0 1E 07 80 */	stfs f0, 0x780(r30)
/* 805D9968  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 805D996C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805D9970  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 805D9974  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805D9978  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805D997C  4B D6 CB 34 */	b PSMTXCopy
/* 805D9980  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 805D9984  D0 1E 07 6C */	stfs f0, 0x76c(r30)
/* 805D9988  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 805D998C  D0 1E 07 70 */	stfs f0, 0x770(r30)
/* 805D9990  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 805D9994  D0 1E 07 74 */	stfs f0, 0x774(r30)
/* 805D9998  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 805D999C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805D99A0  C0 1F 02 CC */	lfs f0, 0x2cc(r31)
/* 805D99A4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805D99A8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805D99AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805D99B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805D99B4  38 81 00 50 */	addi r4, r1, 0x50
/* 805D99B8  38 A1 00 44 */	addi r5, r1, 0x44
/* 805D99BC  4B D6 D3 B0 */	b PSMTXMultVec
/* 805D99C0  38 7E 2C D8 */	addi r3, r30, 0x2cd8
/* 805D99C4  38 81 00 44 */	addi r4, r1, 0x44
/* 805D99C8  4B C9 58 14 */	b SetC__8cM3dGCylFRC4cXyz
/* 805D99CC  38 7E 2C D8 */	addi r3, r30, 0x2cd8
/* 805D99D0  C0 3F 02 EC */	lfs f1, 0x2ec(r31)
/* 805D99D4  4B C9 58 24 */	b SetH__8cM3dGCylFf
/* 805D99D8  38 7E 2C D8 */	addi r3, r30, 0x2cd8
/* 805D99DC  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 805D99E0  4B C9 58 20 */	b SetR__8cM3dGCylFf
/* 805D99E4  7F 63 DB 78 */	mr r3, r27
/* 805D99E8  38 9E 2B B4 */	addi r4, r30, 0x2bb4
/* 805D99EC  4B C8 B1 BC */	b Set__4cCcSFP8cCcD_Obj
/* 805D99F0  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 805D99F4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805D99F8  38 63 07 50 */	addi r3, r3, 0x750
/* 805D99FC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805D9A00  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805D9A04  4B D6 CA AC */	b PSMTXCopy
/* 805D9A08  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 805D9A0C  D0 1E 07 84 */	stfs f0, 0x784(r30)
/* 805D9A10  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 805D9A14  D0 1E 07 88 */	stfs f0, 0x788(r30)
/* 805D9A18  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 805D9A1C  D0 1E 07 8C */	stfs f0, 0x78c(r30)
/* 805D9A20  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 805D9A24  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 805D9A28  39 61 00 A0 */	addi r11, r1, 0xa0
/* 805D9A2C  4B D8 87 D4 */	b _restgpr_19
/* 805D9A30  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 805D9A34  7C 08 03 A6 */	mtlr r0
/* 805D9A38  38 21 00 B0 */	addi r1, r1, 0xb0
/* 805D9A3C  4E 80 00 20 */	blr 
