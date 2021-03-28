lbl_801B944C:
/* 801B944C  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 801B9450  7C 08 02 A6 */	mflr r0
/* 801B9454  90 01 01 14 */	stw r0, 0x114(r1)
/* 801B9458  93 E1 01 0C */	stw r31, 0x10c(r1)
/* 801B945C  93 C1 01 08 */	stw r30, 0x108(r1)
/* 801B9460  7C 7F 1B 78 */	mr r31, r3
/* 801B9464  38 A1 00 04 */	addi r5, r1, 4
/* 801B9468  3C 60 80 39 */	lis r3, lit_4325@ha
/* 801B946C  38 63 56 28 */	addi r3, r3, lit_4325@l
/* 801B9470  38 83 FF FC */	addi r4, r3, -4
/* 801B9474  38 00 00 03 */	li r0, 3
/* 801B9478  7C 09 03 A6 */	mtctr r0
lbl_801B947C:
/* 801B947C  80 64 00 04 */	lwz r3, 4(r4)
/* 801B9480  84 04 00 08 */	lwzu r0, 8(r4)
/* 801B9484  90 65 00 04 */	stw r3, 4(r5)
/* 801B9488  94 05 00 08 */	stwu r0, 8(r5)
/* 801B948C  42 00 FF F0 */	bdnz lbl_801B947C
/* 801B9490  A0 04 00 04 */	lhz r0, 4(r4)
/* 801B9494  B0 05 00 04 */	sth r0, 4(r5)
/* 801B9498  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B949C  3C 80 72 37 */	lis r4, 0x7237 /* 0x72375F31@ha */
/* 801B94A0  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x72375F31@l */
/* 801B94A4  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B94A8  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B94AC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B94B0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B94B4  7D 89 03 A6 */	mtctr r12
/* 801B94B8  4E 80 04 21 */	bctrl 
/* 801B94BC  90 61 00 64 */	stw r3, 0x64(r1)
/* 801B94C0  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B94C4  3C 80 72 37 */	lis r4, 0x7237 /* 0x72375F32@ha */
/* 801B94C8  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x72375F32@l */
/* 801B94CC  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B94D0  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B94D4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B94D8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B94DC  7D 89 03 A6 */	mtctr r12
/* 801B94E0  4E 80 04 21 */	bctrl 
/* 801B94E4  90 61 00 44 */	stw r3, 0x44(r1)
/* 801B94E8  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B94EC  3C 80 72 37 */	lis r4, 0x7237 /* 0x72375F33@ha */
/* 801B94F0  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x72375F33@l */
/* 801B94F4  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B94F8  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B94FC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9500  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9504  7D 89 03 A6 */	mtctr r12
/* 801B9508  4E 80 04 21 */	bctrl 
/* 801B950C  90 61 00 24 */	stw r3, 0x24(r1)
/* 801B9510  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9514  3C 80 72 37 */	lis r4, 0x7237 /* 0x72375F31@ha */
/* 801B9518  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x72375F31@l */
/* 801B951C  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B9520  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B9524  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9528  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B952C  7D 89 03 A6 */	mtctr r12
/* 801B9530  4E 80 04 21 */	bctrl 
/* 801B9534  38 00 00 00 */	li r0, 0
/* 801B9538  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B953C  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9540  3C 80 72 37 */	lis r4, 0x7237 /* 0x72375F32@ha */
/* 801B9544  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x72375F32@l */
/* 801B9548  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B954C  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B9550  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9554  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9558  7D 89 03 A6 */	mtctr r12
/* 801B955C  4E 80 04 21 */	bctrl 
/* 801B9560  38 00 00 00 */	li r0, 0
/* 801B9564  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B9568  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B956C  3C 80 72 37 */	lis r4, 0x7237 /* 0x72375F33@ha */
/* 801B9570  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x72375F33@l */
/* 801B9574  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B9578  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B957C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9580  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9584  7D 89 03 A6 */	mtctr r12
/* 801B9588  4E 80 04 21 */	bctrl 
/* 801B958C  38 00 00 00 */	li r0, 0
/* 801B9590  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B9594  4B E5 B6 0D */	bl mDoExt_getSubFont__Fv
/* 801B9598  7C 64 1B 78 */	mr r4, r3
/* 801B959C  80 61 00 64 */	lwz r3, 0x64(r1)
/* 801B95A0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B95A4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B95A8  7D 89 03 A6 */	mtctr r12
/* 801B95AC  4E 80 04 21 */	bctrl 
/* 801B95B0  4B E5 B5 F1 */	bl mDoExt_getSubFont__Fv
/* 801B95B4  7C 64 1B 78 */	mr r4, r3
/* 801B95B8  80 61 00 44 */	lwz r3, 0x44(r1)
/* 801B95BC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B95C0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B95C4  7D 89 03 A6 */	mtctr r12
/* 801B95C8  4E 80 04 21 */	bctrl 
/* 801B95CC  4B E5 B5 D5 */	bl mDoExt_getSubFont__Fv
/* 801B95D0  7C 64 1B 78 */	mr r4, r3
/* 801B95D4  80 61 00 24 */	lwz r3, 0x24(r1)
/* 801B95D8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B95DC  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B95E0  7D 89 03 A6 */	mtctr r12
/* 801B95E4  4E 80 04 21 */	bctrl 
/* 801B95E8  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B95EC  3C 80 72 30 */	lis r4, 0x7230 /* 0x72305F31@ha */
/* 801B95F0  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x72305F31@l */
/* 801B95F4  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B95F8  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B95FC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9600  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9604  7D 89 03 A6 */	mtctr r12
/* 801B9608  4E 80 04 21 */	bctrl 
/* 801B960C  90 61 00 68 */	stw r3, 0x68(r1)
/* 801B9610  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9614  3C 80 72 30 */	lis r4, 0x7230 /* 0x72305F32@ha */
/* 801B9618  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x72305F32@l */
/* 801B961C  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B9620  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B9624  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9628  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B962C  7D 89 03 A6 */	mtctr r12
/* 801B9630  4E 80 04 21 */	bctrl 
/* 801B9634  90 61 00 48 */	stw r3, 0x48(r1)
/* 801B9638  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B963C  3C 80 72 30 */	lis r4, 0x7230 /* 0x72305F33@ha */
/* 801B9640  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x72305F33@l */
/* 801B9644  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B9648  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B964C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9650  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9654  7D 89 03 A6 */	mtctr r12
/* 801B9658  4E 80 04 21 */	bctrl 
/* 801B965C  90 61 00 28 */	stw r3, 0x28(r1)
/* 801B9660  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9664  3C 80 72 30 */	lis r4, 0x7230 /* 0x72305F31@ha */
/* 801B9668  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x72305F31@l */
/* 801B966C  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B9670  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B9674  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9678  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B967C  7D 89 03 A6 */	mtctr r12
/* 801B9680  4E 80 04 21 */	bctrl 
/* 801B9684  38 00 00 00 */	li r0, 0
/* 801B9688  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B968C  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9690  3C 80 72 30 */	lis r4, 0x7230 /* 0x72305F32@ha */
/* 801B9694  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x72305F32@l */
/* 801B9698  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B969C  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B96A0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B96A4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B96A8  7D 89 03 A6 */	mtctr r12
/* 801B96AC  4E 80 04 21 */	bctrl 
/* 801B96B0  38 00 00 00 */	li r0, 0
/* 801B96B4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B96B8  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B96BC  3C 80 72 30 */	lis r4, 0x7230 /* 0x72305F33@ha */
/* 801B96C0  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x72305F33@l */
/* 801B96C4  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B96C8  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B96CC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B96D0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B96D4  7D 89 03 A6 */	mtctr r12
/* 801B96D8  4E 80 04 21 */	bctrl 
/* 801B96DC  38 00 00 00 */	li r0, 0
/* 801B96E0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B96E4  4B E5 B4 BD */	bl mDoExt_getSubFont__Fv
/* 801B96E8  7C 64 1B 78 */	mr r4, r3
/* 801B96EC  80 61 00 68 */	lwz r3, 0x68(r1)
/* 801B96F0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B96F4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B96F8  7D 89 03 A6 */	mtctr r12
/* 801B96FC  4E 80 04 21 */	bctrl 
/* 801B9700  4B E5 B4 A1 */	bl mDoExt_getSubFont__Fv
/* 801B9704  7C 64 1B 78 */	mr r4, r3
/* 801B9708  80 61 00 48 */	lwz r3, 0x48(r1)
/* 801B970C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9710  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B9714  7D 89 03 A6 */	mtctr r12
/* 801B9718  4E 80 04 21 */	bctrl 
/* 801B971C  4B E5 B4 85 */	bl mDoExt_getSubFont__Fv
/* 801B9720  7C 64 1B 78 */	mr r4, r3
/* 801B9724  80 61 00 28 */	lwz r3, 0x28(r1)
/* 801B9728  81 83 00 00 */	lwz r12, 0(r3)
/* 801B972C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B9730  7D 89 03 A6 */	mtctr r12
/* 801B9734  4E 80 04 21 */	bctrl 
/* 801B9738  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B973C  3C 80 72 31 */	lis r4, 0x7231 /* 0x72315F31@ha */
/* 801B9740  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x72315F31@l */
/* 801B9744  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B9748  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B974C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9750  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9754  7D 89 03 A6 */	mtctr r12
/* 801B9758  4E 80 04 21 */	bctrl 
/* 801B975C  90 61 00 6C */	stw r3, 0x6c(r1)
/* 801B9760  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9764  3C 80 72 31 */	lis r4, 0x7231 /* 0x72315F32@ha */
/* 801B9768  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x72315F32@l */
/* 801B976C  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B9770  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B9774  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9778  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B977C  7D 89 03 A6 */	mtctr r12
/* 801B9780  4E 80 04 21 */	bctrl 
/* 801B9784  90 61 00 4C */	stw r3, 0x4c(r1)
/* 801B9788  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B978C  3C 80 72 31 */	lis r4, 0x7231 /* 0x72315F33@ha */
/* 801B9790  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x72315F33@l */
/* 801B9794  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B9798  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B979C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B97A0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B97A4  7D 89 03 A6 */	mtctr r12
/* 801B97A8  4E 80 04 21 */	bctrl 
/* 801B97AC  90 61 00 2C */	stw r3, 0x2c(r1)
/* 801B97B0  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B97B4  3C 80 72 31 */	lis r4, 0x7231 /* 0x72315F31@ha */
/* 801B97B8  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x72315F31@l */
/* 801B97BC  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B97C0  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B97C4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B97C8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B97CC  7D 89 03 A6 */	mtctr r12
/* 801B97D0  4E 80 04 21 */	bctrl 
/* 801B97D4  38 00 00 00 */	li r0, 0
/* 801B97D8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B97DC  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B97E0  3C 80 72 31 */	lis r4, 0x7231 /* 0x72315F32@ha */
/* 801B97E4  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x72315F32@l */
/* 801B97E8  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B97EC  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B97F0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B97F4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B97F8  7D 89 03 A6 */	mtctr r12
/* 801B97FC  4E 80 04 21 */	bctrl 
/* 801B9800  38 00 00 00 */	li r0, 0
/* 801B9804  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B9808  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B980C  3C 80 72 31 */	lis r4, 0x7231 /* 0x72315F33@ha */
/* 801B9810  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x72315F33@l */
/* 801B9814  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B9818  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B981C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9820  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9824  7D 89 03 A6 */	mtctr r12
/* 801B9828  4E 80 04 21 */	bctrl 
/* 801B982C  38 00 00 00 */	li r0, 0
/* 801B9830  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B9834  4B E5 B3 6D */	bl mDoExt_getSubFont__Fv
/* 801B9838  7C 64 1B 78 */	mr r4, r3
/* 801B983C  80 61 00 6C */	lwz r3, 0x6c(r1)
/* 801B9840  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9844  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B9848  7D 89 03 A6 */	mtctr r12
/* 801B984C  4E 80 04 21 */	bctrl 
/* 801B9850  4B E5 B3 51 */	bl mDoExt_getSubFont__Fv
/* 801B9854  7C 64 1B 78 */	mr r4, r3
/* 801B9858  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 801B985C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9860  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B9864  7D 89 03 A6 */	mtctr r12
/* 801B9868  4E 80 04 21 */	bctrl 
/* 801B986C  4B E5 B3 35 */	bl mDoExt_getSubFont__Fv
/* 801B9870  7C 64 1B 78 */	mr r4, r3
/* 801B9874  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 801B9878  81 83 00 00 */	lwz r12, 0(r3)
/* 801B987C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B9880  7D 89 03 A6 */	mtctr r12
/* 801B9884  4E 80 04 21 */	bctrl 
/* 801B9888  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B988C  3C 80 72 32 */	lis r4, 0x7232 /* 0x72325F31@ha */
/* 801B9890  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x72325F31@l */
/* 801B9894  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B9898  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B989C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B98A0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B98A4  7D 89 03 A6 */	mtctr r12
/* 801B98A8  4E 80 04 21 */	bctrl 
/* 801B98AC  90 61 00 70 */	stw r3, 0x70(r1)
/* 801B98B0  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B98B4  3C 80 72 32 */	lis r4, 0x7232 /* 0x72325F32@ha */
/* 801B98B8  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x72325F32@l */
/* 801B98BC  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B98C0  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B98C4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B98C8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B98CC  7D 89 03 A6 */	mtctr r12
/* 801B98D0  4E 80 04 21 */	bctrl 
/* 801B98D4  90 61 00 50 */	stw r3, 0x50(r1)
/* 801B98D8  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B98DC  3C 80 72 32 */	lis r4, 0x7232 /* 0x72325F33@ha */
/* 801B98E0  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x72325F33@l */
/* 801B98E4  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B98E8  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B98EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B98F0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B98F4  7D 89 03 A6 */	mtctr r12
/* 801B98F8  4E 80 04 21 */	bctrl 
/* 801B98FC  90 61 00 30 */	stw r3, 0x30(r1)
/* 801B9900  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9904  3C 80 72 32 */	lis r4, 0x7232 /* 0x72325F31@ha */
/* 801B9908  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x72325F31@l */
/* 801B990C  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B9910  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B9914  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9918  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B991C  7D 89 03 A6 */	mtctr r12
/* 801B9920  4E 80 04 21 */	bctrl 
/* 801B9924  38 00 00 00 */	li r0, 0
/* 801B9928  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B992C  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9930  3C 80 72 32 */	lis r4, 0x7232 /* 0x72325F32@ha */
/* 801B9934  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x72325F32@l */
/* 801B9938  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B993C  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B9940  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9944  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9948  7D 89 03 A6 */	mtctr r12
/* 801B994C  4E 80 04 21 */	bctrl 
/* 801B9950  38 00 00 00 */	li r0, 0
/* 801B9954  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B9958  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B995C  3C 80 72 32 */	lis r4, 0x7232 /* 0x72325F33@ha */
/* 801B9960  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x72325F33@l */
/* 801B9964  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B9968  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B996C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9970  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9974  7D 89 03 A6 */	mtctr r12
/* 801B9978  4E 80 04 21 */	bctrl 
/* 801B997C  38 00 00 00 */	li r0, 0
/* 801B9980  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B9984  4B E5 B2 1D */	bl mDoExt_getSubFont__Fv
/* 801B9988  7C 64 1B 78 */	mr r4, r3
/* 801B998C  80 61 00 70 */	lwz r3, 0x70(r1)
/* 801B9990  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9994  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B9998  7D 89 03 A6 */	mtctr r12
/* 801B999C  4E 80 04 21 */	bctrl 
/* 801B99A0  4B E5 B2 01 */	bl mDoExt_getSubFont__Fv
/* 801B99A4  7C 64 1B 78 */	mr r4, r3
/* 801B99A8  80 61 00 50 */	lwz r3, 0x50(r1)
/* 801B99AC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B99B0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B99B4  7D 89 03 A6 */	mtctr r12
/* 801B99B8  4E 80 04 21 */	bctrl 
/* 801B99BC  4B E5 B1 E5 */	bl mDoExt_getSubFont__Fv
/* 801B99C0  7C 64 1B 78 */	mr r4, r3
/* 801B99C4  80 61 00 30 */	lwz r3, 0x30(r1)
/* 801B99C8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B99CC  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B99D0  7D 89 03 A6 */	mtctr r12
/* 801B99D4  4E 80 04 21 */	bctrl 
/* 801B99D8  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B99DC  3C 80 72 33 */	lis r4, 0x7233 /* 0x72335F31@ha */
/* 801B99E0  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x72335F31@l */
/* 801B99E4  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B99E8  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B99EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B99F0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B99F4  7D 89 03 A6 */	mtctr r12
/* 801B99F8  4E 80 04 21 */	bctrl 
/* 801B99FC  90 61 00 74 */	stw r3, 0x74(r1)
/* 801B9A00  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9A04  3C 80 72 33 */	lis r4, 0x7233 /* 0x72335F32@ha */
/* 801B9A08  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x72335F32@l */
/* 801B9A0C  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B9A10  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B9A14  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9A18  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9A1C  7D 89 03 A6 */	mtctr r12
/* 801B9A20  4E 80 04 21 */	bctrl 
/* 801B9A24  90 61 00 54 */	stw r3, 0x54(r1)
/* 801B9A28  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9A2C  3C 80 72 33 */	lis r4, 0x7233 /* 0x72335F33@ha */
/* 801B9A30  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x72335F33@l */
/* 801B9A34  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B9A38  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B9A3C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9A40  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9A44  7D 89 03 A6 */	mtctr r12
/* 801B9A48  4E 80 04 21 */	bctrl 
/* 801B9A4C  90 61 00 34 */	stw r3, 0x34(r1)
/* 801B9A50  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9A54  3C 80 72 33 */	lis r4, 0x7233 /* 0x72335F31@ha */
/* 801B9A58  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x72335F31@l */
/* 801B9A5C  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B9A60  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B9A64  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9A68  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9A6C  7D 89 03 A6 */	mtctr r12
/* 801B9A70  4E 80 04 21 */	bctrl 
/* 801B9A74  38 00 00 00 */	li r0, 0
/* 801B9A78  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B9A7C  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9A80  3C 80 72 33 */	lis r4, 0x7233 /* 0x72335F32@ha */
/* 801B9A84  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x72335F32@l */
/* 801B9A88  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B9A8C  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B9A90  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9A94  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9A98  7D 89 03 A6 */	mtctr r12
/* 801B9A9C  4E 80 04 21 */	bctrl 
/* 801B9AA0  38 00 00 00 */	li r0, 0
/* 801B9AA4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B9AA8  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9AAC  3C 80 72 33 */	lis r4, 0x7233 /* 0x72335F33@ha */
/* 801B9AB0  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x72335F33@l */
/* 801B9AB4  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B9AB8  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B9ABC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9AC0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9AC4  7D 89 03 A6 */	mtctr r12
/* 801B9AC8  4E 80 04 21 */	bctrl 
/* 801B9ACC  38 00 00 00 */	li r0, 0
/* 801B9AD0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B9AD4  4B E5 B0 CD */	bl mDoExt_getSubFont__Fv
/* 801B9AD8  7C 64 1B 78 */	mr r4, r3
/* 801B9ADC  80 61 00 74 */	lwz r3, 0x74(r1)
/* 801B9AE0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9AE4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B9AE8  7D 89 03 A6 */	mtctr r12
/* 801B9AEC  4E 80 04 21 */	bctrl 
/* 801B9AF0  4B E5 B0 B1 */	bl mDoExt_getSubFont__Fv
/* 801B9AF4  7C 64 1B 78 */	mr r4, r3
/* 801B9AF8  80 61 00 54 */	lwz r3, 0x54(r1)
/* 801B9AFC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9B00  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B9B04  7D 89 03 A6 */	mtctr r12
/* 801B9B08  4E 80 04 21 */	bctrl 
/* 801B9B0C  4B E5 B0 95 */	bl mDoExt_getSubFont__Fv
/* 801B9B10  7C 64 1B 78 */	mr r4, r3
/* 801B9B14  80 61 00 34 */	lwz r3, 0x34(r1)
/* 801B9B18  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9B1C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B9B20  7D 89 03 A6 */	mtctr r12
/* 801B9B24  4E 80 04 21 */	bctrl 
/* 801B9B28  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9B2C  3C 80 72 34 */	lis r4, 0x7234 /* 0x72345F31@ha */
/* 801B9B30  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x72345F31@l */
/* 801B9B34  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B9B38  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B9B3C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9B40  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9B44  7D 89 03 A6 */	mtctr r12
/* 801B9B48  4E 80 04 21 */	bctrl 
/* 801B9B4C  90 61 00 78 */	stw r3, 0x78(r1)
/* 801B9B50  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9B54  3C 80 72 34 */	lis r4, 0x7234 /* 0x72345F32@ha */
/* 801B9B58  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x72345F32@l */
/* 801B9B5C  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B9B60  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B9B64  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9B68  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9B6C  7D 89 03 A6 */	mtctr r12
/* 801B9B70  4E 80 04 21 */	bctrl 
/* 801B9B74  90 61 00 58 */	stw r3, 0x58(r1)
/* 801B9B78  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9B7C  3C 80 72 34 */	lis r4, 0x7234 /* 0x72345F33@ha */
/* 801B9B80  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x72345F33@l */
/* 801B9B84  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B9B88  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B9B8C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9B90  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9B94  7D 89 03 A6 */	mtctr r12
/* 801B9B98  4E 80 04 21 */	bctrl 
/* 801B9B9C  90 61 00 38 */	stw r3, 0x38(r1)
/* 801B9BA0  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9BA4  3C 80 72 34 */	lis r4, 0x7234 /* 0x72345F31@ha */
/* 801B9BA8  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x72345F31@l */
/* 801B9BAC  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B9BB0  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B9BB4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9BB8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9BBC  7D 89 03 A6 */	mtctr r12
/* 801B9BC0  4E 80 04 21 */	bctrl 
/* 801B9BC4  38 00 00 00 */	li r0, 0
/* 801B9BC8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B9BCC  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9BD0  3C 80 72 34 */	lis r4, 0x7234 /* 0x72345F32@ha */
/* 801B9BD4  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x72345F32@l */
/* 801B9BD8  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B9BDC  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B9BE0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9BE4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9BE8  7D 89 03 A6 */	mtctr r12
/* 801B9BEC  4E 80 04 21 */	bctrl 
/* 801B9BF0  38 00 00 00 */	li r0, 0
/* 801B9BF4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B9BF8  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9BFC  3C 80 72 34 */	lis r4, 0x7234 /* 0x72345F33@ha */
/* 801B9C00  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x72345F33@l */
/* 801B9C04  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B9C08  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B9C0C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9C10  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9C14  7D 89 03 A6 */	mtctr r12
/* 801B9C18  4E 80 04 21 */	bctrl 
/* 801B9C1C  38 00 00 00 */	li r0, 0
/* 801B9C20  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B9C24  4B E5 AF 7D */	bl mDoExt_getSubFont__Fv
/* 801B9C28  7C 64 1B 78 */	mr r4, r3
/* 801B9C2C  80 61 00 78 */	lwz r3, 0x78(r1)
/* 801B9C30  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9C34  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B9C38  7D 89 03 A6 */	mtctr r12
/* 801B9C3C  4E 80 04 21 */	bctrl 
/* 801B9C40  4B E5 AF 61 */	bl mDoExt_getSubFont__Fv
/* 801B9C44  7C 64 1B 78 */	mr r4, r3
/* 801B9C48  80 61 00 58 */	lwz r3, 0x58(r1)
/* 801B9C4C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9C50  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B9C54  7D 89 03 A6 */	mtctr r12
/* 801B9C58  4E 80 04 21 */	bctrl 
/* 801B9C5C  4B E5 AF 45 */	bl mDoExt_getSubFont__Fv
/* 801B9C60  7C 64 1B 78 */	mr r4, r3
/* 801B9C64  80 61 00 38 */	lwz r3, 0x38(r1)
/* 801B9C68  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9C6C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B9C70  7D 89 03 A6 */	mtctr r12
/* 801B9C74  4E 80 04 21 */	bctrl 
/* 801B9C78  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9C7C  3C 80 72 35 */	lis r4, 0x7235 /* 0x72355F31@ha */
/* 801B9C80  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x72355F31@l */
/* 801B9C84  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B9C88  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B9C8C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9C90  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9C94  7D 89 03 A6 */	mtctr r12
/* 801B9C98  4E 80 04 21 */	bctrl 
/* 801B9C9C  90 61 00 7C */	stw r3, 0x7c(r1)
/* 801B9CA0  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9CA4  3C 80 72 35 */	lis r4, 0x7235 /* 0x72355F32@ha */
/* 801B9CA8  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x72355F32@l */
/* 801B9CAC  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B9CB0  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B9CB4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9CB8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9CBC  7D 89 03 A6 */	mtctr r12
/* 801B9CC0  4E 80 04 21 */	bctrl 
/* 801B9CC4  90 61 00 5C */	stw r3, 0x5c(r1)
/* 801B9CC8  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9CCC  3C 80 72 35 */	lis r4, 0x7235 /* 0x72355F33@ha */
/* 801B9CD0  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x72355F33@l */
/* 801B9CD4  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B9CD8  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B9CDC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9CE0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9CE4  7D 89 03 A6 */	mtctr r12
/* 801B9CE8  4E 80 04 21 */	bctrl 
/* 801B9CEC  90 61 00 3C */	stw r3, 0x3c(r1)
/* 801B9CF0  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9CF4  3C 80 72 35 */	lis r4, 0x7235 /* 0x72355F31@ha */
/* 801B9CF8  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x72355F31@l */
/* 801B9CFC  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B9D00  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B9D04  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9D08  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9D0C  7D 89 03 A6 */	mtctr r12
/* 801B9D10  4E 80 04 21 */	bctrl 
/* 801B9D14  38 00 00 00 */	li r0, 0
/* 801B9D18  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B9D1C  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9D20  3C 80 72 35 */	lis r4, 0x7235 /* 0x72355F32@ha */
/* 801B9D24  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x72355F32@l */
/* 801B9D28  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B9D2C  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B9D30  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9D34  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9D38  7D 89 03 A6 */	mtctr r12
/* 801B9D3C  4E 80 04 21 */	bctrl 
/* 801B9D40  38 00 00 00 */	li r0, 0
/* 801B9D44  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B9D48  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9D4C  3C 80 72 35 */	lis r4, 0x7235 /* 0x72355F33@ha */
/* 801B9D50  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x72355F33@l */
/* 801B9D54  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B9D58  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B9D5C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9D60  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9D64  7D 89 03 A6 */	mtctr r12
/* 801B9D68  4E 80 04 21 */	bctrl 
/* 801B9D6C  38 00 00 00 */	li r0, 0
/* 801B9D70  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B9D74  4B E5 AE 2D */	bl mDoExt_getSubFont__Fv
/* 801B9D78  7C 64 1B 78 */	mr r4, r3
/* 801B9D7C  80 61 00 7C */	lwz r3, 0x7c(r1)
/* 801B9D80  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9D84  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B9D88  7D 89 03 A6 */	mtctr r12
/* 801B9D8C  4E 80 04 21 */	bctrl 
/* 801B9D90  4B E5 AE 11 */	bl mDoExt_getSubFont__Fv
/* 801B9D94  7C 64 1B 78 */	mr r4, r3
/* 801B9D98  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 801B9D9C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9DA0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B9DA4  7D 89 03 A6 */	mtctr r12
/* 801B9DA8  4E 80 04 21 */	bctrl 
/* 801B9DAC  4B E5 AD F5 */	bl mDoExt_getSubFont__Fv
/* 801B9DB0  7C 64 1B 78 */	mr r4, r3
/* 801B9DB4  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 801B9DB8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9DBC  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B9DC0  7D 89 03 A6 */	mtctr r12
/* 801B9DC4  4E 80 04 21 */	bctrl 
/* 801B9DC8  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9DCC  3C 80 72 36 */	lis r4, 0x7236 /* 0x72365F31@ha */
/* 801B9DD0  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x72365F31@l */
/* 801B9DD4  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B9DD8  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B9DDC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9DE0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9DE4  7D 89 03 A6 */	mtctr r12
/* 801B9DE8  4E 80 04 21 */	bctrl 
/* 801B9DEC  90 61 00 80 */	stw r3, 0x80(r1)
/* 801B9DF0  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9DF4  3C 80 72 36 */	lis r4, 0x7236 /* 0x72365F32@ha */
/* 801B9DF8  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x72365F32@l */
/* 801B9DFC  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B9E00  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B9E04  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9E08  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9E0C  7D 89 03 A6 */	mtctr r12
/* 801B9E10  4E 80 04 21 */	bctrl 
/* 801B9E14  90 61 00 60 */	stw r3, 0x60(r1)
/* 801B9E18  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9E1C  3C 80 72 36 */	lis r4, 0x7236 /* 0x72365F33@ha */
/* 801B9E20  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x72365F33@l */
/* 801B9E24  3C 80 66 66 */	lis r4, 0x6666 /* 0x66666F6F@ha */
/* 801B9E28  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x66666F6F@l */
/* 801B9E2C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9E30  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9E34  7D 89 03 A6 */	mtctr r12
/* 801B9E38  4E 80 04 21 */	bctrl 
/* 801B9E3C  90 61 00 40 */	stw r3, 0x40(r1)
/* 801B9E40  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9E44  3C 80 72 36 */	lis r4, 0x7236 /* 0x72365F31@ha */
/* 801B9E48  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x72365F31@l */
/* 801B9E4C  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B9E50  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B9E54  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9E58  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9E5C  7D 89 03 A6 */	mtctr r12
/* 801B9E60  4E 80 04 21 */	bctrl 
/* 801B9E64  38 00 00 00 */	li r0, 0
/* 801B9E68  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B9E6C  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9E70  3C 80 72 36 */	lis r4, 0x7236 /* 0x72365F32@ha */
/* 801B9E74  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x72365F32@l */
/* 801B9E78  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B9E7C  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B9E80  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9E84  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9E88  7D 89 03 A6 */	mtctr r12
/* 801B9E8C  4E 80 04 21 */	bctrl 
/* 801B9E90  38 00 00 00 */	li r0, 0
/* 801B9E94  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B9E98  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9E9C  3C 80 72 36 */	lis r4, 0x7236 /* 0x72365F33@ha */
/* 801B9EA0  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x72365F33@l */
/* 801B9EA4  3C 80 66 6C */	lis r4, 0x666C /* 0x666C6F6F@ha */
/* 801B9EA8  38 A4 6F 6F */	addi r5, r4, 0x6F6F /* 0x666C6F6F@l */
/* 801B9EAC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9EB0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9EB4  7D 89 03 A6 */	mtctr r12
/* 801B9EB8  4E 80 04 21 */	bctrl 
/* 801B9EBC  38 00 00 00 */	li r0, 0
/* 801B9EC0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B9EC4  4B E5 AC DD */	bl mDoExt_getSubFont__Fv
/* 801B9EC8  7C 64 1B 78 */	mr r4, r3
/* 801B9ECC  80 61 00 80 */	lwz r3, 0x80(r1)
/* 801B9ED0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9ED4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B9ED8  7D 89 03 A6 */	mtctr r12
/* 801B9EDC  4E 80 04 21 */	bctrl 
/* 801B9EE0  4B E5 AC C1 */	bl mDoExt_getSubFont__Fv
/* 801B9EE4  7C 64 1B 78 */	mr r4, r3
/* 801B9EE8  80 61 00 60 */	lwz r3, 0x60(r1)
/* 801B9EEC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9EF0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B9EF4  7D 89 03 A6 */	mtctr r12
/* 801B9EF8  4E 80 04 21 */	bctrl 
/* 801B9EFC  4B E5 AC A5 */	bl mDoExt_getSubFont__Fv
/* 801B9F00  7C 64 1B 78 */	mr r4, r3
/* 801B9F04  80 61 00 40 */	lwz r3, 0x40(r1)
/* 801B9F08  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9F0C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B9F10  7D 89 03 A6 */	mtctr r12
/* 801B9F14  4E 80 04 21 */	bctrl 
/* 801B9F18  3B E0 00 00 */	li r31, 0
/* 801B9F1C  3B C0 00 00 */	li r30, 0
lbl_801B9F20:
/* 801B9F20  80 6D 8B 00 */	lwz r3, myclass__12dMenu_Dmap_c(r13)
/* 801B9F24  88 03 01 71 */	lbz r0, 0x171(r3)
/* 801B9F28  7C 04 07 74 */	extsb r4, r0
/* 801B9F2C  88 03 01 70 */	lbz r0, 0x170(r3)
/* 801B9F30  7C 00 07 74 */	extsb r0, r0
/* 801B9F34  7C 64 00 50 */	subf r3, r4, r0
/* 801B9F38  38 03 00 01 */	addi r0, r3, 1
/* 801B9F3C  7C 00 07 74 */	extsb r0, r0
/* 801B9F40  7C 1F 00 00 */	cmpw r31, r0
/* 801B9F44  40 80 00 E8 */	bge lbl_801BA02C
/* 801B9F48  7C 84 FA 14 */	add r4, r4, r31
/* 801B9F4C  34 84 00 05 */	addic. r4, r4, 5
/* 801B9F50  41 80 00 0C */	blt lbl_801B9F5C
/* 801B9F54  2C 04 00 0D */	cmpwi r4, 0xd
/* 801B9F58  41 80 00 68 */	blt lbl_801B9FC0
lbl_801B9F5C:
/* 801B9F5C  38 61 00 64 */	addi r3, r1, 0x64
/* 801B9F60  7C 63 F0 2E */	lwzx r3, r3, r30
/* 801B9F64  38 80 00 10 */	li r4, 0x10
/* 801B9F68  3C A0 80 39 */	lis r5, d_menu_d_menu_dmap__stringBase0@ha
/* 801B9F6C  38 A5 57 60 */	addi r5, r5, d_menu_d_menu_dmap__stringBase0@l
/* 801B9F70  38 A5 00 6F */	addi r5, r5, 0x6f
/* 801B9F74  4C C6 31 82 */	crclr 6
/* 801B9F78  48 14 67 D5 */	bl setString__10J2DTextBoxFsPCce
/* 801B9F7C  38 61 00 44 */	addi r3, r1, 0x44
/* 801B9F80  7C 63 F0 2E */	lwzx r3, r3, r30
/* 801B9F84  38 80 00 10 */	li r4, 0x10
/* 801B9F88  3C A0 80 39 */	lis r5, d_menu_d_menu_dmap__stringBase0@ha
/* 801B9F8C  38 A5 57 60 */	addi r5, r5, d_menu_d_menu_dmap__stringBase0@l
/* 801B9F90  38 A5 00 6F */	addi r5, r5, 0x6f
/* 801B9F94  4C C6 31 82 */	crclr 6
/* 801B9F98  48 14 67 B5 */	bl setString__10J2DTextBoxFsPCce
/* 801B9F9C  38 61 00 24 */	addi r3, r1, 0x24
/* 801B9FA0  7C 63 F0 2E */	lwzx r3, r3, r30
/* 801B9FA4  38 80 00 10 */	li r4, 0x10
/* 801B9FA8  3C A0 80 39 */	lis r5, d_menu_d_menu_dmap__stringBase0@ha
/* 801B9FAC  38 A5 57 60 */	addi r5, r5, d_menu_d_menu_dmap__stringBase0@l
/* 801B9FB0  38 A5 00 6F */	addi r5, r5, 0x6f
/* 801B9FB4  4C C6 31 82 */	crclr 6
/* 801B9FB8  48 14 67 95 */	bl setString__10J2DTextBoxFsPCce
/* 801B9FBC  48 00 00 D0 */	b lbl_801BA08C
lbl_801B9FC0:
/* 801B9FC0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801B9FC4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801B9FC8  54 80 08 3C */	slwi r0, r4, 1
/* 801B9FCC  38 81 00 08 */	addi r4, r1, 8
/* 801B9FD0  7C 84 02 AE */	lhax r4, r4, r0
/* 801B9FD4  38 A1 00 84 */	addi r5, r1, 0x84
/* 801B9FD8  38 C0 00 00 */	li r6, 0
/* 801B9FDC  48 06 22 75 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801B9FE0  38 61 00 64 */	addi r3, r1, 0x64
/* 801B9FE4  7C 63 F0 2E */	lwzx r3, r3, r30
/* 801B9FE8  38 80 00 10 */	li r4, 0x10
/* 801B9FEC  38 A1 00 84 */	addi r5, r1, 0x84
/* 801B9FF0  4C C6 31 82 */	crclr 6
/* 801B9FF4  48 14 67 59 */	bl setString__10J2DTextBoxFsPCce
/* 801B9FF8  38 61 00 44 */	addi r3, r1, 0x44
/* 801B9FFC  7C 63 F0 2E */	lwzx r3, r3, r30
/* 801BA000  38 80 00 10 */	li r4, 0x10
/* 801BA004  38 A1 00 84 */	addi r5, r1, 0x84
/* 801BA008  4C C6 31 82 */	crclr 6
/* 801BA00C  48 14 67 41 */	bl setString__10J2DTextBoxFsPCce
/* 801BA010  38 61 00 24 */	addi r3, r1, 0x24
/* 801BA014  7C 63 F0 2E */	lwzx r3, r3, r30
/* 801BA018  38 80 00 10 */	li r4, 0x10
/* 801BA01C  38 A1 00 84 */	addi r5, r1, 0x84
/* 801BA020  4C C6 31 82 */	crclr 6
/* 801BA024  48 14 67 29 */	bl setString__10J2DTextBoxFsPCce
/* 801BA028  48 00 00 64 */	b lbl_801BA08C
lbl_801BA02C:
/* 801BA02C  38 61 00 64 */	addi r3, r1, 0x64
/* 801BA030  7C 63 F0 2E */	lwzx r3, r3, r30
/* 801BA034  38 80 00 10 */	li r4, 0x10
/* 801BA038  3C A0 80 39 */	lis r5, d_menu_d_menu_dmap__stringBase0@ha
/* 801BA03C  38 A5 57 60 */	addi r5, r5, d_menu_d_menu_dmap__stringBase0@l
/* 801BA040  38 A5 00 6F */	addi r5, r5, 0x6f
/* 801BA044  4C C6 31 82 */	crclr 6
/* 801BA048  48 14 67 05 */	bl setString__10J2DTextBoxFsPCce
/* 801BA04C  38 61 00 44 */	addi r3, r1, 0x44
/* 801BA050  7C 63 F0 2E */	lwzx r3, r3, r30
/* 801BA054  38 80 00 10 */	li r4, 0x10
/* 801BA058  3C A0 80 39 */	lis r5, d_menu_d_menu_dmap__stringBase0@ha
/* 801BA05C  38 A5 57 60 */	addi r5, r5, d_menu_d_menu_dmap__stringBase0@l
/* 801BA060  38 A5 00 6F */	addi r5, r5, 0x6f
/* 801BA064  4C C6 31 82 */	crclr 6
/* 801BA068  48 14 66 E5 */	bl setString__10J2DTextBoxFsPCce
/* 801BA06C  38 61 00 24 */	addi r3, r1, 0x24
/* 801BA070  7C 63 F0 2E */	lwzx r3, r3, r30
/* 801BA074  38 80 00 10 */	li r4, 0x10
/* 801BA078  3C A0 80 39 */	lis r5, d_menu_d_menu_dmap__stringBase0@ha
/* 801BA07C  38 A5 57 60 */	addi r5, r5, d_menu_d_menu_dmap__stringBase0@l
/* 801BA080  38 A5 00 6F */	addi r5, r5, 0x6f
/* 801BA084  4C C6 31 82 */	crclr 6
/* 801BA088  48 14 66 C5 */	bl setString__10J2DTextBoxFsPCce
lbl_801BA08C:
/* 801BA08C  3B FF 00 01 */	addi r31, r31, 1
/* 801BA090  2C 1F 00 08 */	cmpwi r31, 8
/* 801BA094  3B DE 00 04 */	addi r30, r30, 4
/* 801BA098  41 80 FE 88 */	blt lbl_801B9F20
/* 801BA09C  83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 801BA0A0  83 C1 01 08 */	lwz r30, 0x108(r1)
/* 801BA0A4  80 01 01 14 */	lwz r0, 0x114(r1)
/* 801BA0A8  7C 08 03 A6 */	mtlr r0
/* 801BA0AC  38 21 01 10 */	addi r1, r1, 0x110
/* 801BA0B0  4E 80 00 20 */	blr 
